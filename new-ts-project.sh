#!bin/bash


function ts-setup {
    makedir
    write_tsconfig
    write_eslintconfig
    write_prettier
    init_packages
    mkdir src
    touch src/index.ts
}

function makedir {

    echo Enter the name of your project: 
    read NAME
    mkdir $NAME
    cd $NAME

PACKAGE_JSON=$(cat <<EOF
{
  "name": "$NAME",
  "version": "0.0.1",
  "description": "description",
  "author": "M Baxendale",
  "main": "index.js",
  "scripts": {
    "build": "tsc",
    "file": "ts-node index.ts"
  },
  "repository": {
    "type": "git"
  },
  "private": "true",
  "license": "MIT"
}
EOF
)

# must use doublequotes here too!
printf "$PACKAGE_JSON" > package.json
   
}


function write_tsconfig {

    touch tsconfig.json
    echo '{
    "compilerOptions": {
    "module": "NodeNext",
    "moduleResolution": "NodeNext",
    "noImplicitAny": false,
    "noEmitOnError": false,
    "removeComments": false,
    "sourceMap": true,
    "target": "es5",
    "outDir": "dist"
    },
    "include": ["./"]

    }' > tsconfig.json
}

function write_eslintconfig {
    touch .eslintrc.json
    echo '{
    "root": true,
    "extends": [
        "eslint:recommended",
        "plugin:@typescript-eslint/recommended"
    ],
    "parser": "@typescript-eslint/parser",
    "parserOptions": { "project": ["./tsconfig.json"] },
    "plugins": [
        "@typescript-eslint"
    ],
    "rules": {
        "indent": ["error", 4]
    },
    "ignorePatterns": ["src/**/*.test.ts", "src/frontend/generated/*"]
    }' > .eslintrc.json
}

function write_prettier {

    touch prettierrc.json
    echo '{
    "trailingComma": "es5",
    "tabWidth": 4,
    "semi": false,
    "singleQuote": true
    }' > prettierrc.json
}


function init_packages {

    npm i --save-dev typescript @typescript-eslint/parser
    npm i --save-dev @typescript-eslint/eslint-plugin
    npm i --save-dev ts-node
    npm i --save-dev eslint
}


ts-setup
