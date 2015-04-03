# CSS
Lecture on CSS

# Objective
Students will be able to...

- Write basic CSS expressions
- Add classes and ids to HTML tags
- Create about me pages with styling

# Link
Let's build some about me pages and style them.

# Educate and Engage
"CSS" stands for cascading style sheets. Styles define how to display HTML elements. HTML elements are identified either by `tag`, `id` or `class`.

Example:

```html
<a href="" id="pretty-link" class="awesome-links"></a>
```

Things to keep in mind with this example:

- The tag is `a`
- The `id` is "pretty-link" and can only be used once per page
- The `class` is "awesome-links" and can be assigned to multiple elements on a page

To apply styling to all anchor tags, you could write the following:

```css
a {
	/* style rules here */
}
```

To apply styling to an `id`, use the `#`-notation:

```css
#pretty-link {
	/* style rules here */
}
```

To apply styling to all elements of a class, use the `.`-notation:

```css
.awesome-links {
	/* style rules here */
}
```

Style rules follow a simple `key: value;` pattern, such as:

```css
a {
	/* This will turn all links red */
	color: red;
}
```

CSS style rules are stored in a `.css` file and required in an HTML head like so:

```html
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" type="text/css" href="path/to/css-file.css">
</head>
<body>
	<!-- Body here... -->
</body>
</html>
```

# Active Learning
## Part 1 - Code an about me page
Build an about me page with the following components:

- A heading (h1)
- A subheading (h2)
- At least one paragraph with some text about you
- One image of you
- One image of your hometown
- A list of your hobbies (ul and li)
- A list of your three favorite technologies
- Links to your LinkedIn or GitHub or some similar link

## Part 2 - Style the page
Research how to do the following and apply these styles to your elements on your about me page:

- Make your h1 30px big and green
- Make your h2 20px big and green
- Make all your paragraphs dark gray and 15px big
- Make both your images have a border that's 10px wide
- Make your first image have a red border, and your second image have a blue border
- Increase the margin between all list items
- Make all links turn red when you hover over them with your mouse
- Center your h1
- Right-align your list of three favorite technologies

# Reflect
*Go over assignment with students*

In summary, you learned the following:

- applying styles to one, many, or all instances of a tag
- changing colors
- adding border width and color
- basic positioning
- events like hover

# Now and Then
Although this course doesn't focus on CSS as much as other technologies, you will use CSS throughout your career.

More to read:

- [Positioning](http://www.w3schools.com/css/css_positioning.asp)
- [Layouts](http://www.w3schools.com/html/html_layout.asp)
- [Box model](http://www.w3schools.com/css/css_boxmodel.asp)
