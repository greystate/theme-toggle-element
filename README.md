# Custom Element Template

A template for creating a new [custom element][CUSTOM] for use in HTML.

## Using the template

First, pick a good name for your element. Custom elements are required to contain a dash to
make sure they won't clash with any future official HTML elements.

If your custom element is called `<super-bold>`, the convention is to name the JS class `SuperBold`.

- [ ] Click the **Use this template** button above to have GitHub create a new repository in your account.
- [ ] Clone the repository down to your machine
- [ ] Run the `lib/init.sh` script to setup the basic files - pass in the name for the JavaScript class, and the name for the element, e.g.:

```bash
$ source lib/init.sh SuperBold super-bold
```

- [ ] Start coding your element
- [ ] Document your new element in the README file


[CUSTOM]: https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements
