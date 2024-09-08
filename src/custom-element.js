class CustomElement extends HTMLElement {

	constructor() {
		super()
	}

	connectedCallback() {
		//
	}
}

export { CustomElement }

export default function registerElement() {
	customElements.define('custom-element', CustomElement)
}
