# google-xyz
Designed to improve resume-making and tailoring by helping you restructure your resume work and project experiences to align with the notorious Google XYZ formula, by leveraging AI.

Accessible via: https://ashnahkhalidkhan.github.io/google-xyz/


#### Resources used:
- https://pages.github.com/ (Project site > Start from scratch > Follow all instructions there).

- I need to make sure I use ReactJS or VueJS or some other fancy JS because I need to update the values being outputted multiple times.

- Another thing needed is to incorporate GitHub Actions because... why not? It's good practice for learning GitHub Actions and its workings.

- Okie dokie, learning the order of Git commands I need each to update this repository via this video by Net Ninja on YouTube: `https://www.youtube.com/watch?v=QyFcl_Fba-k`

- So some GitHub commands and what they do I learned on the way:
`git status` --> tells me the branch I am currently in
`git add .` --> add all changes (that is what the dot in the end is for) to the Git staging area; it allows you to select which changes you want to include in your next commit. Without using git add, no changes would be recorded in the commit.
`git commit -m "descriptive commit message"` --> basically the actual command that commits all changes to the repository
`git push origin <branch name>` --> pushes all commits to the branch (in our case, branch name will be 'main'); basically updates the branch with all commits

- So, I am back. Need to fix this git not committing issue. Let's see what I can do.

- I fixed the git not committing issue! Had to generate a Personal Access Token for this laptop. I think I should include the steps here, but maybe if I make that many projects, I won't need to remember (???) Who knows? Let's take things one step at a time.

- Fixing the git not committing issue:
(On laptop) Windows Credential Manager > Windows Credentials > `git:https://github.com` > Remove > (On github.com website) Profile > Settings > Developer Settings > Enter all details and give all permissions > Generate Token > Copy and save somewhere > (On laptop) Open the terminal on VS Code > git push origin main > (pop-up) Token > Enter token you just copied > OK

- Yeah so I'm coming back to this line after the previous line after I discovered I was committing with the wrong author identity. To fix this, just to your terminal and enter these two commands with your primary GitHub email and name:
`git config --global user.name "Your Name"`
`git config --global user.email "your-email@example.com"`
After that, you can go about committing this normally as you would.

- I was trying to choose between using React or VueJS for this project. Honestly, I don't understand what's going on. The benefits of the two? I will have to read up on. What even is React? (I know what it is, I've used it, but what REALLY is React) And what even in the world is VueJS??? Time to dive a little bit deeper into concepts.

- First and foremost: what is React? Well, React is a JavaScript library. The terms that standout to me about React and terms that I have now moved way past from. I'm choosing VueJS because (a) wow, what a name and story from its creator, and (b) I've never worked with it before so I want to try it out.

- So I watched a couple YouTube videos from publishing a VueJS app to GitHub Pages for free, to creating my first VueJS app, to a complete crashcourse on VueJS and web development for beginners. I am diving into this one almost 4-hour long video by Faraday-something from freeCodeCamp.org on VueJS and I highly recommend it cause I love her voice and style of explaining things - I feel like I ACTUALLY understand things a little bit woohooo! This video is 3 years old though so it may be a bit deprecated and stuff, but overall I like it.

- First thing I need to understand is the difference between Vue 3 and the current Vue version and whether this is even the same now. Doing some research and coming back.

- So... I think Vue right now IS Vue 3. So I think we're good... (fingers crossed).

- Apparently there two core features to Vue which are Declarative Rendering and Reactivity.

- How the documentation describes these in very hard language is this way:
The above example demonstrates the two core features of Vue:
Declarative Rendering: Vue extends standard HTML with a template syntax that allows us to declaratively describe HTML output based on JavaScript state.
Reactivity: Vue automatically tracks JavaScript state changes and efficiently updates the DOM when changes happen.

- In more human (sane) language, I would describe these this way:
Declarative Rendering: You declare what the UI should look like based on data, instead of manually writing code to update the UI step-by-step. For example, you write `<p>{{ message }}</p>` and set message = 'Hello Vue!', and Vue will render `<p>Hello Vue!</p>` and if later, message changes to 'Hi again!', Vue automatically updates the `<p>` tag to show `<p>Hi again!<p>`.
Reactivity: Vue reacts to changes in your data. When your JavaScript data (called "state") changes, Vue knows which parts of the UI depend on that data and updates only those parts of the DOM i.e. you don’t need to write code like document.querySelector().innerText = ...; Vue does it for you.

- Okay so past the two core features of Vue. Now, there is another section on "Ways of Using Vue" which is for experienced developers. They did give a bunch of usecases that honestly just sounded a little too intimidating for me at the moment so I am simply skipping over them at the moment, but here is the link if I'm ever feeling courageous in the future (already proud of you, Future Me if you're reading this): `https://vuejs.org/guide/extras/ways-of-using-vue.html`

- I have been reading all over the place about how Vue is called "The Progressive Framework", and they only just explained why. Apparently it's because "it's a framework that can grow with you and adapt to your needs"; the core knowledge about how Vue works is shared across all - beginner, intermediate, expert, and everything in between - use cases.

- At the heart of writing code for VueJS, is following a file format called Single-File Component or SFC or *.vue files.

- Vue SFC files contain 3 sections: the component's logic (JavaScript), template (HTML), and styles (CSS) in a single file. These are denoted by the `<script setup>`, `<template>` and `<style scoped>` tags respectively. To put it into more human (sane) form:
component's logic --> Javascript --> `<script setup>`
component's template --> HTML --> `<template>`
component's styles --> CSS --> `<style scoped>`

- Now to illustrate the SFC thing via an example. Both of the following two codes are valid in VueJS, but only the second one follows SFC format:
Code # 1 (Not SFC):
```
import { createApp, ref } from 'vue'

createApp({
    setup() {
        return {
            count: ref(0)
        }
    }
}).mount('#app')

<div id="app">
    <button @click="count++">
        Count is: {{ count }}
    </button>
</div>
```
Code # 2 (SFC):
```
<script setup>
import { ref } from 'vue'
const count = ref(0)
</script>

<template>
    <button @click="count++">
        Count is: {{ count }}
    </button>
</template>

<style scoped>
button
{
    font-weight: bold;
}
</style>
```

- Important clarification: SFC files are saved as `.vue` files instead of normal `.html` files.

- So... major dumbness that just happened. All my commits up until now were happening through my Personal Access Token author and not my own GitHub user. I found the fix though and I put it up there on top. I hope I remember this order. LOL.

- Okay so according to the documentation, there are two API Styles: Options API and Composition API. The only real thing I know at this point is that Composition API is what I need to use in the future so that is what I am looking to build. Also, fun fact, all the tutorials, documentation, everything I have read so far related to this, they ALWAYS start with Options API and say that they are going to convert to Composition API later but GODDDDD, start with it from the beginning bro, give me GOOD fundamentals. Ugh.

- The first thing to do always is to create a new variable that creates a new Vue instance for us. The method that does this is `Vue.createApp()`:
```
<script>
const app = Vue.createApp({});
<script>
```

- The `Vue.createApp({})` function takes in an object which contains any data or methods that we want in our Vue app. One such The `data()` is a function that returns an object. So for example, if I want to return an object named `'winx'` with the value `'Bloom'` and another object with the name `'numberOfTransformations'` with the value `'10'`, I will make something like this:
```
<script>
const app = Vue.createApp
({
    data()
    {
        return {
            winx: "Bloom",
            numberOfTransformations: 10
        }
    }   
});
<script>
```
Note that the curly bracket next to return NEEDS to be on the same line as the return keyword for some Godforsaken reason. Whoever made that necessary needs to die.

- After creating the Vue app, we need to mount it to an id of wherever you want to mount or show the app. From what I understand, the app they are mounting right now is on a `<div>` element in the HTML. The method used for mounting is `mount()` and is called by the variable on which we created our Vue app. The argument for this `mount()` method is the id of the `<div>` element where we can to display it:
```
<div id = "thisistheIDOfElementWhereWeWantToMountApp">
</div>
<script>
const app = Vue.createApp
({
    data()
    {
        return {
            winx: "Bloom",
            numberOfTransformations: 10
        }
    }   
});
app.mount('#thisistheIDOfElementWhereWeWantToMountApp')
<script>
```

- To show the objects I am returning from the `data()` function into my Vue app, I can just use double curly brackets, i.e. `{{ }}`, with the object's name. For example, if the objects being returned by my `data()` function are `winx` and `numberOfTransformations`, I will display their values simply by doing this:
```
<div id = "thisistheIDOfElementWhereWeWantToMountApp">
    <h1>
        {{ winx }} has {{ numberOfTransformations }} transformations across all 9 Winx Club seasons.
    </h1>
</div>
<script>
const app = Vue.createApp
({
    data()
    {
        return {
            winx: "Bloom",
            numberOfTransformations: 10
        }
    }   
});
app.mount('#thisistheIDOfElementWhereWeWantToMountApp')
<script>
```

- I am now learning how to use declarative rendering in Vue JS. For this, there are two core Vue API I need to know about: `reactive()` and `ref()`. These are ways of importing them so that they can be used in my SFC (`.vue`) file:
```
<script setup>
import { reactive, ref } from 'vue';
// Or I can important these separately like
// import { reactive } from 'vue';
// import { ref } from 'vue';
</script>
```

- Both `reactive()` and `ref()` will display values and automatically update them as they are modified, however `reactive()` only works on objects while `ref()` can only work on one value object at a time. So for example, using `reactive()` I can initialize an object called `message` and inside this object I can initialize other individual attributes (I guess we'll call them attributes???) `message1` and `message2` that I can access and update directly:
```
<script setup>
import { reactive } from 'vue';

const message = reactive
({
    message1: "This is message",
    message2: "This is message"
});
message.message1 = message.message1 + " 1";
message.message2 = message.message2 + " 2";
</script>

<template>
    <h1>{{ message.message1 }}</h1>
    <h2>{{ message.message2 }}</h2>
</template>
```
When using `ref()`, I can initialize a variable directly with the value I want to, update it by referencing it through the object's name and `.value` and assigning it a new value, and rendering it by directly referencing the entire object in the double curly brackets, i.e. `{{ }}`:
```
<script setup>
import { ref } from 'vue';

const message1 = ref("This is message");
const message2 = ref("This is message");
message1.value = message1.value + " 1";
message2.value = message2.value + " 2";
</script>

<template>
    <h1>{{ message1 }}</h1>
    <h2>{{ message2 }}</h2>
</template>
```

- Normal HTML elements have attributes like `style`, `id`, `class` etc that you can add to the HTML element for defining properties. Vue JS directives are special attributes in Vue that start with the `v-` prefix.

- `v-bind` is a Vue JS directive used for binding an attribute to a dynamic value. It takes an argument which is the attribute we want to bind and a variable with the dynamic value we want to bind it to. For example, in the following code `v-bind` binds the `id` attribute of the `div` element to the value of the variable `dynamicId` which is `'whateverTheNameOfAnIDIWantToKeep'`:
```
<script setup>
import { ref } from 'vue';

const dynamicId = ref('whateverTheNameOfAnIDIWantToKeep');
</script>

<template>
    <div v-bind:id="dynamicId">This is a dynamic ID<div>
</template>
``` 
As a second example given in the Vue Docs, in the following code `v-bind` binds the `class` attribute of the `h1` element to the value of the variable `titleClass` which is `'title'` so the `h1` element bears the style properties of the `title` class i.e. the color red:
```
<script setup>
import { ref } from 'vue';

const titleClass = ref('title')
</script>

<template>
    <h1 v-bind:class="titleClass">Make me red</h1>
</template>

<style>
.title
{
  color: red;
}
</style>
```

- The shorthand for writing `v-bind:id="..."` or any other `v-bind` is just to directly use whatever is after `v-bind` like so `:id="..."` etc. But we all know I'm not going to do this because I like explicit code. Hehe.

- Quickly going to learn how to create a function in Vue. We declare this in the `<script>` tag and the keyword we use is `function`, followed by the name of the fuction and any arguments we want to provide in it. We don't really need to return any value if not needed. This is what it looks like:
```
<script setup>
import { ref } from 'vue'

const count = ref(0)

function incrementFunctionNameBaby()
{
    count.value++
}
</script>
```

- Now, we move onto another concept of Vue which is event listening. For this, we use another Vue directive called `v-on`. This directive takes an argument which is a DOM event and the function we want to be triggered every time this event is triggered on the element the directive is attached to. All the in-built DOM events that can be given as an argument to `v-on` are present on this link (https://www.w3schools.com/jsref/dom_obj_event.asp). To give an example, the code `<button v-on:click="incrementFunctionNameBaby">This button triggers the count to be increased</button>` attaches the `v-on` directive to the `button` element which, on every `click` event triggers the `incrementFunctionNameBaby` function:
```
<script setup>
import { ref } from 'vue'

const count = ref(0)

function incrementFunctionNameBaby()
{
    count.value++
}
</script>

<template>
    <button v-on:click="incrementFunctionNameBaby">This button triggers the count to be increased</button>
    <h1>{{ count }}</h1>
</template>
```

- The shorthand for writing `v-on:click="..."` or any other `v-on` is just to directly use replace `v-on:` with `@` like so `@click="..."` or `@scroll=""` etc. But we all know I'm not going to do this too because, again, I like explicit code. Hehe hehe. Michael Jackson laugh.

- Also, important point here is that you can also create and listen to custom events in Vue, but we all know I am not even going to step close to that before I have the scaffold of the website up (I am so, so, SO tempted to but no, must practice self-control) so we are keeping a rain-check on that unless we need it.

- Fun fact: I just learned what 'syntactic sugar' means. According to Wikipedia, "In computer science, syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use." That's pretty cute. Sweet little programming nerds who came up with this.

- Another directive, is `v-model`. This directive is special to `input` elements, usually used in forms. For any input we used in a form, we would like it to automatically update its variable value as it is updated on input. Using the directives we have already learned, we can accomplish that through something like this called a "two-way binding":
```
<script setup>
import { ref } from 'vue';

const text = ref('');

function updateInput(e)
{
    text.value = e.target.value
}
</script>

<template>
    <input v-bind:value="text" v-on:input="updateInput">
    <p>{{ text }}</p>
</template>
```
A more efficient way to do this for `input` type elements is to use the `v-model` directive. With `v-model`, we can completely get rid of the update function and simply assign it the variable for our input like so:
```
<script setup>
import { ref } from 'vue';

const text = ref('');
</script>

<template>
    <input v-model="text">
    <p>{{ text }}</p>
</template>
```

- There are another set of Vue JS directives for handling conditional rendering of elements and those include `v-if`, `v-else-if` and `v-else`. Honestly, it's best to just see how they work and how they conditionally render elements using this example but I'm only using two of these:
```
<script setup>
import { ref } from 'vue';

const booleanVariable = ref(true);

function changingTheBooleanVariable()
{
    booleanVariable.value = !booleanVariable.value;
}
</script>

<template>
    <button v-on:click="changingTheBooleanVariable">Toggle</button>
    <h1 v-if="booleanVariable">Vue is awesome!</h1>
    <h1 v-else>Oh no 😢</h1>
</template>
```

- Time for the `v-for` directive. I won't lie, everyone has worded it so weirdly that I've had to read different types of documentation and watch videos thrice for this. It's actually really simple once you replace the HORRIBLY worded variable names with explicitly named ones - for us gold, old-fashioned (sane) folks. Here it goes.

- `v-for` is absolutely horrible and I do not understand it. I cannot have. I have leftover eyeliner in my eye and it hurts to even keep my eyes open. Ugh.

- I was today years old when I got to know that "props" stands for "properties". This explains SO much.

- I was also today years old when it finally clicked that "init" in a million different places stands for "initialized". Like what even bro, use full forms like a sane person. I hate abbreviators. Barbarians...

- Here's the example:

- Never mind that, we're taking a detour. Time to experiment with a little HTML canvas.

- Starting with HTML canvas starts by using the HTML tag ``<canvas></canvas>`` in your code:
```
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
</head>
<body>
    <canvas>
        Shubidababubba
    </canvas>
</body>
</html>
```

- So immediately, this won't be visible so I'm going to add a style to this in the form of a border and a fill color:
```
<!DOCTYPE html>
<html>
<style>
    canvas
    {
        border: 1px solid;
        background: peachpuff;
    }
</style>
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
</head>
<body>
    <canvas>
        Shubidababubba
    </canvas>
</body>
</html>
```

- Right now, the `<canvas>` and `<body>` elements in the HTML file are set to default values of size so the `<canvas>` does not stretch to the entire webpage and there is some white space from where the `<canvas>` starts on the webpage. We're going to solve this incrementally. First, we're going to remove the default margins for the `<body>` and set them to zero. The `<canvas>` element should now no longer have any whitespaces surrounding it:
```
<!DOCTYPE html>
<html>
<style>
    body
    {
        margin: 0;
    }

    canvas
    {
        border: 1px solid;
        background: peachpuff;
    }
</style>
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
</head>
<body>
    <canvas>
        Shubidababubba
    </canvas>
</body>
</html>
```

- Now we want the `<canvas>` element to stretch to the entire webpage. You might be tempted to do this by setting the width and height of the `<canvas>` to 100%, but this won't work as will be visible once you click on "Inspect" for the webpage and see some secret whitespace creeping up so DO NOT DO IT THIS WAY:
```
<!DOCTYPE html>
<html>
<style>
    body
    {
        margin: 0;
    }

    canvas
    {
        border: 1px solid;
        background: peachpuff;
        width: 100%;
        height: 100%;
    }
</style>
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
</head>
<body>
    <canvas>
        Shubidababubba
    </canvas>
</body>
</html>
```

- What I will need to do instead, is use JavaScript to get the whole webpage's dynamic size. For this, I will first create a `.js` file with any name; I am choosing the name `windowSize.js` just to experiment a little. And I will now link this file to my HTML file by tweaking the `index.html` like so with the `<script>` tag and adding the source (`src`) argument with the filename:
```
<!DOCTYPE html>
<html>
<style>
    body
    {
        margin: 0;
    }

    canvas
    {
        border: 1px solid;
        background: peachpuff;
    }
</style>
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
</head>
<body>
    <canvas>
        Shubidababubba
    </canvas>
    <script src="./windowSize.js">
    </script>
</body>
</html>
```

- In the `windowSize.js` file, I will now need a way to reference this `<canvas>` element in my `index.html` file. To do this, we can use `document.querySelector('canvas')` like so where we create a variable called `canvasVariable` (again, being explicit with the names for now) and we use `document.querySelector('canvas')` to select all `<canvas>` elements in our webpage:
```
let canvasVariable = document.querySelector('canvas');
```

- To set the size (width and height) of the `<canvas>` to the window's size, we can use the browser's in-built `window` object which has the properties `innerWidth` and `innerHeight` properties like so which will make sure the `<canvas>` is the full size of the window:
```
let canvasVariable = document.querySelector('canvas');
canvasVariable.width = window.innerWidth;
canvasVariable.height = window.innerHeight;
```

- There are also other properties for the `window` object and here are the differences between its `innerWidth`, `outerWidth`, `innerHeight` and `outerHeight` properties:
innerWidth and innerHeight --> do NOT include scrollbars and do NOT include browser UI (e.g., toolbars)
outerWidth and outerHeight --> include scrollbars and include browser UI (e.g., toolbars)

- One problem here is that our above code fixes the size of our `<canvas>` so for example when we go to resize our window (start with a smaller window, refresh the webpage, then maximize the window and you'll see what I mean), it won't dynamically resize the `<canvas>` with it. To fix this, we need to update our `canvasVariable.width` and `canvasVariable.height` variables with the current values for `window.innerWidth` and `window.innerHeight` respectively every time the window resizes. For this, we use our `window` object and add an `EventListener` listening for `'resize'` events for our window and call a function which updates these properties like so in it:
```
let canvasVariable = document.querySelector('canvas');

canvasVariable.width = window.innerWidth;
canvasVariable.height = window.innerHeight;

window.addEventListener('resize', function()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
});
```

- Before we start, time for a little refractoring of code - OH MY GOD I FEEL LIKE SUCH A PRO CODER WITH THIS MOVE AAAAHHHHH:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- To actually draw shapes and animations on the `<canvas>`, we need to use a method called `getContext()` and use the argument `'2d'` in it. The `getContext('2d')` method retrieves the 2D rendering context (a `CanvasRenderingContext2D` object), which provides methods and properties to draw shapes, text, images, and more. We will use it in our  `windowSize.js` file like so by initiazing a variable `canvas2DContextVariable` and setting it to the `canvasVariable` calling the `getContext('2d')` method on it:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- We're going to draw some circles! For this, we will use the `.arc()` method for the `canvas2DContextVariable` object like so: `canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle, counterclockwise);` In this method, the arguments correspond to the following:
x --> The x-coordinate of the center of the arc.
y --> The y-coordinate of the center of the arc.
radius --> The radius of the arc (a positive number).
startAngle --> The starting angle of the arc in radians (0 is at the 3 o'clock position on the circle).
endAngle --> The ending angle of the arc in radians.
counterclockwise (optional) --> A boolean value. If true, the arc is drawn counterclockwise; otherwise, it is drawn clockwise (default is false).

- Note that the values for startAngle and endAngle will range from `0` to `Math.PI * 2`.

- Here is how we will a bunch of random circle at random positions throughout the whole window in our code using a 'for' loop: firstly, we will create the for-loop - I want 200 circles to be created so I am running it 200 times:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

for (let i = 0; i < 200; i++)
{

}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- Then, we will create and initialize variables for each of the arguments for making the circles using the `.arc()` method:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let x, y, radius;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- An important thing to note here is that since it is a circle we want to draw, the `startAngle` and `endAngle` values will be the same each time so they have been made into constants. Now we will figure out a formula for calculating the values for `x`, `y`, and `radius`. For this, we will need to understand the ranges we want to keep for all three values. `x` should be any value within the range of the width of the window, `y` should be any value within the range of the height of the window and we have decided that we want the radius to lie anywhere between the values of 10 and 50. Using the function `Math.random()` and `Math.floor()` we can calculate random values for `x`, `y` and `radius` that lie within this range like so:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let x, y, radius;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- Now to actually draw the circles, we will use two methods with our `canvas2DContextVariable` object: `.beginPath()` and `.stroke()`. The `.beginPath()` method reinitialize the starting point of where we will create the next circle or else all the circles would be drawn on top of eachother, while the `.stroke()` method actually draws the lines making the circle:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let x, y, radius;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    canvas2DContextVariable.stroke();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}
```

- Ah, magnifique! All circles are drawn.

#### Other random thoughts I get while working on this because why not:
- I have realized when I first learn things, I need to watch the same videos multiple times sometimes before I understand them. What a roadblocker for progress, isn't it?
- I just got an email from HR... I need to commit this and take a moment to reflect on everything. This is huge.
- Okay so why in the world is this so hard again? I am SO sleepy.
- I have this insane idea to club together all incremental faces of the website and make a timelapse of it when launching the tool. That would be pretty cool I think.
- Why in the world do people reach out to me asking me about my "life progress"? Like dude, what are you looking to achieve by asking people what THEY are doing? I don't understand influence.
- I am pretty sure if I can just develop the discipline to sit and go through code documentation completely, I will be invincible.
- So. Tried. Of. Arrogant. People. Actually, just arrogant programmers.
- Sub pagal hain. Sub kay sub pagal hain.
- I think I lack the basic human decency to do anything. Yup. I am indecent human being altogether.