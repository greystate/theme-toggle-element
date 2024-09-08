# &lt;SCRIPT_FILE&gt; element

<!-- Explain what it does -->
A [custom element][CUSTOM] to do something useful

## Usage

Include the [script file][DISTFILE] in your HTML like this:

```html
<script type="module" src="/path/to/SCRIPT_FILE.min.js"></script>
```

Alternatively, you can manually import the [source file][SOURCEFILE] and register the component like this:

```javascript
import registerElement from './path/to/SCRIPT_FILE.js'
registerElement()
```

<!-- Explain how to use it here -->
Now add the element to your page wherever you need to ...

```html
	Code sample of how to use the element
```

## Customization

<!-- Can it be customized? Explain how... -->

[CUSTOM]: https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements
[DISTFILE]: dist/SCRIPT_FILE-browser.min.js
[SOURCEFILE]: src/SCRIPT_FILE.js
