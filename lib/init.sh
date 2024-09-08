JS_NAME=$1
ELEMENT_NAME=$2

if [[ "$JS_NAME" == "" ]] then;
	echo "You must call this with the JS class name and the element name, e.g. \`lib/init.sh ShareLink share-link\`"
	exit 1
fi

if [[ ! -e "src/custom-element.js" ]] then;
	echo "Ooops - wrong directory..."
	exit 1
fi

sed -i '' -e "s/CustomElement/$JS_NAME/g" src/custom-element.js
sed -i '' -e "s/custom-element/$ELEMENT_NAME/g" src/custom-element.js

sed -i '' -e "s/custom-element/$ELEMENT_NAME/g" src/custom-element-browser.js

sed -i '' -e "s/CustomElement/$JS_NAME/g" test/spec/custom-element-spec.js
sed -i '' -e "s/custom-element/$ELEMENT_NAME/g" test/spec/custom-element-spec.js

sed -i '' -e "s/custom-element-spec/$ELEMENT_NAME-spec/g" test/SpecRunner.html

sed -i '' -e "s/SCRIPT_FILE/$ELEMENT_NAME/g" README.starter.md


mv src/custom-element.js "src/${ELEMENT_NAME}.js"
mv src/custom-element-browser.js "src/${ELEMENT_NAME}-browser.js"
mv dist/custom-element-browser.min.js "dist/${ELEMENT_NAME}-browser.min.js"
mv test/spec/custom-element-spec.js "test/spec/${ELEMENT_NAME}-spec.js"

mv README.md template-README.md
mv README.starter.md README.md
