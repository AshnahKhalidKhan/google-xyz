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
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
    <style>
        canvas
        {
            border: 1px solid;
            background: peachpuff;
        }
    </style>
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
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
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
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
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
<head>
    <meta charset="UTF-8" />
    <title>Google XYZ</title>
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

- Ah, magnifique! All circles are drawn. Now let's get to some styling to make them look like bubbles. First, let's REMOVE this section of code from the `<style>` tag in the `index.html` file:
```
canvas
{
    border: 1px solid;
    background: peachpuff;
}
```

- Now let's add some code to make the circles look like bubbles. First we will choose a color theme palette and initialize an array called `colorPalette` with all these values, and also initialize a variable `color` which randomly selects a color from the array each time:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
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

- Let's start small. For now, we're going to only make the outline of the circles colored. To do this, we need to set a property called `strokeStyle` for our `canvas2DContextVariable` object to the `color` value we are randomly choosing:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    canvas2DContextVariable.strokeStyle = color;
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
A bunch of colored-outline circles should be visible on the screen now.

- What we actually want is for the circles (bubbles) to be colored instead of just their outlines, so instead of using the `.stroke()` method and `stokeStyle` property, we will use a `.fill()` method and a `fillStyle` property. This should turn the outlined circles to solid color-filled circles:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    canvas2DContextVariable.fillStyle = color;
    canvas2DContextVariable.fill();
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

- Okay, not gonna lie, I want to stop here cause it looks so fun and casual and nice. But, we said bubbles and we are going to create bubbles. Here we go.

- To give the circles a more bubble-y look, instead of setting the `fillStyle` property directly to just one color, we will set it to gradient of colors. To do so, we will first initialize another variable named `gradient` which will be a `CanvasGradient` object we will create using the `.createRadialGradient()` method with our `canvas2DContextVariable` object. Then, we will set our `fillStyle` property equal to our `gradient` variable.:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color, gradient;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient( , , , , , , );
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- The `.createRadialGradient()` method requires 6 arguments i.e. `createRadialGradient(sx, sy, sr, ex, ey, er)`. To understand these, we must understand that a radial gradient is made up of two circles -  a start circle and an end circle. The start circle is where the gradient begins, growing outward in a circular pattern all the way to the end circle. The arguments in the `.createRadialGradient()` method correspond to the coordinates and size of these start and end circles:
sx ---> x-axis coordinate of the start circle.
sy ---> y-axis coordinate of the start circle.
sr ---> radius of the start circle. Must be non-negative and finite.
ex ---> x-axis coordinate of the start circle.
ey ---> y-axis coordinate of the start circle.
er ---> radius of the start circle. Must be non-negative and finite.
Since we want to give our circles that bubble-y gleam look, we want the gradient to begin slightly toward the left of the circle and grow until its very edge. To achieve this effect, we use the following values in the `.createRadialGradient()` method:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color, gradient;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- At the moment, you will see nothing since we have not defined our gradient colors yet. To do so, we will use the `.addColorStop()` method with our `gradient` object. The `.addColorStop()` method takes two arguments which is the point in the gradient up to which we want the color to show, and the color itself. For example, To give it a nice transition, we are going to use the colors white (with the hexadecimal code `#FFFFFF`) and the `color` variable. The points at which we want these colors to stop were chosen after a lot (A LOT) of trial and error:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color, gradient;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- The last thing for us to do is to add some transparency to these bubbles to give them that soft and light feeling. To do so, we just need to manipulate the chosen color's hexadecimal value. The last two numbers of a hexadecimal 8-digit color code correspond to its opacity (or transparency-related) value. Whatever transparency we want, we convert that to the hexadecimal form and append that to the color's original 6-digit hexadecimal value. In our case, we want 20% transparency or 80% opacity which translates to the hexadecimal code `CC` (we can use this site for help: `https://davidwalsh.name/hex-opacity`). To achieve this, we simply append this to our color value in our `.addStopColor()` method:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color, gradient;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- And we are done! The bubbles are colored! You know, I'm seriously thinking of ditching the two-tone-ness and just going with solid colored transparent circles because they seem so minimalistic and cute, but I don't know... this is what they'd look like:
```
let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2']

let x, y, radius, color, gradient;
const startAngle = 0;
const endAngle = Math.PI * 2;

for (let i = 0; i < 200; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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
THEY'RE SO PRETTY!!!

- Okay so did a little editing. Apparently, it's best practice for the `<style>` tag to be placed inside the `<head>` tag in HTML.

- I have found an issue. When accessing the webpage, the screen stays blank and only after refreshing does it show the circles. To resolve this, I need to refractor the code so that the circles are drawn at the same time as the window is initialized or resized.

- I also went on a tangent to see how to structure JavaScript files to follow best practice and apparently, this is somewhat what the structure should look like so we're going to refractor our existing code on the basis of roughly this:
```
// 1. Constants and configuration
const COLOR_PALETTE = ['#A7F2F2', '#D6C9F2', '#C9B6F2'];

// 2. Global variables
let canvas, ctx;

// 3. Utility/helper functions
function resizeCanvas() { ... }

function drawCircle(x, y, radius, color) { ... }

// 4. Main logic or setup function
function init() {
  canvas = document.querySelector('canvas');
  ctx = canvas.getContext('2d');
  resizeCanvas();
  drawAllCircles();
}

// 5. Event listeners
window.addEventListener('resize', resizeCanvas);

// 6. Kick off execution
init();
```

- Okie dokie, starting refractoring now. First, I'm going to move up all my constants. I am also creating an additional constant for the number of circles I want to create called `totalCircles` and I will replace the same value in the for-loop as well:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');

resizeCanvas();

let canvas2DContextVariable = canvasVariable.getContext('2d');

let x, y, radius, color, gradient;

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- Now, I will move up my actual variables that I will be using throughout the file a.k.a my 'global' variables:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

resizeCanvas();

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
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

- I can see that at this time I only have one utility/helper function which is the `resizeCanvas()` method so I will move that up and below my global variables:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

resizeCanvas();

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});
```

- My main logic or setup function section (a function that initialized everything in the webpage) does not include anything at the moment because I am including everything in the actual execution part - the drawing of my circles basically. I'll just include an empty function called `initializeCanvas()` for now under my utility/helper function section.
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function initializeCanvas()
{
    //Leaving empty for now
}

resizeCanvas();

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});
```

- I have an EventListener for the `'resize'` event which I am moving just below my main logic/setup function section:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function initializeCanvas()
{
    //Leaving empty for now
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

resizeCanvas();

for (let i = 0; i < totalCircles; i++)
{
    canvas2DContextVariable.beginPath();
    x = Math.floor(Math.random() * window.innerWidth);
    y = Math.floor(Math.random() * window.innerHeight);
    radius = Math.floor(Math.random() * 50) + 10;
    canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
    color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
    gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
    gradient.addColorStop(0.2, '#FFFFFF');
    gradient.addColorStop(1.0, color + "CC");
    canvas2DContextVariable.fillStyle = gradient;
    canvas2DContextVariable.fill();
}
```

- Finally, this leaves my actual call to the `resizeCanvas()` and for-loop for drawing the circles at the very bottom in the execution section.

- Now that we finally have a structure in place, let's make changes to our code to fix the actual blank screen on first access issue for our webpage. The simple solution to fixing this is to draw the circles everytime the `resizeCanvas()` function is called. To do this, we will first create another function called `drawCircles()` in which we will place all our code related to drawing the circles like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let x, y, radius, color, gradient;

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    //Leaving empty for now
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

resizeCanvas();
```

- What I think we can also do since the variables and constants `x`, `y`, `radius`, `startAngle`, `endAngle`, `color`, and `gradient` will only be used within the scope of the `drawCircle()` function, I can move them there:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    //Leaving empty for now
}

window.addEventListener('resize', function()
{
    resizeCanvas();
});

resizeCanvas();
```

- Now I want to make sure that every time the window is resized, the circles are redrawn. To do this, I simply add the `drawCircles()` function inside the EventListener for the `'resize'` event where the `resizeCanvas()` function is already being called:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    //Leaving empty for now
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

resizeCanvas();
```

- Now notice that in the execution section, only the `resizeCanvas()` function is being called every time the webpage is first accessed. This means that only after resizing the window will the circles be drawn. Instead of also adding the `drawCircles()` function to the execution section too, we can utilize the `initializeCanvas()` function and call both methods inside it and just add that to the execution section of our file instead. This means that when the webpage is first accessed, the `initializeCanvas()` function will be called, which will in turn call on the `resizeCanvas()` function and then the `drawCircles()` function like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- This solves our initial-blank-screen-on-webpage-first-access issue! I am tempted to put the initialize method into the `'resize'` event EventListener but I feel like I should let that be for now in case resize does not always mean re-initialize everything.

- Oooookayyyyyy sooooooooooo... I think I need to install `Node.js` now. Also, I need to go on my resume and fix "NodeJS" with "Node.js" (I like "NodeJS" better). Anyways, this part should be simple. I went to `https://nodejs.org/en/download/` and then downloaded the `.msi` file and ran it. During the installation, I just checked "Entire feature will be installed on local hard drive" the entire time. I hope that was a good decision. Now some PowerShell script is running - very scared I might have broken this computer. I've realized I am afraid of installations in general I guess. Weird. Khair, back to this. Going to have to wait for this PowerShell script to complete running I guess. Whoa, this installation is loooooong. Okay it's complete! But now my device needs to be restarted. Okie dokie, be right back!

- I am back. Just going to quickly check if `Node.js` and `npm` have been installed by running these commands on the Command Prompt:
`node --version`
`npm --version`

- Cutting back to the moving circles/bubbles frontend again (sorry backend enthusiasts), it's time to add some movement to the bubbles. What this calls for is coding in some animation to our created circles. The idea is to understand that every animation is a frame where the object is moved slightly on an x-y plane. We already know that our created circles can move around if we change their `x` and `y` values, but since these values are created on the go with the circles which are also created on the go, we can't reference them each time we need to change their values. To reference all of them, we need to store them somwhere. Hence, we will now create an array to store a bunch of instance of a custom object (which we will also create) that contain all of these values as attributes. Basic OOP, Ash. You **should** understand this...

- Here we go. We are going to intialize the variable `circleArray` as an empty array that will store all the instances of the custom object that will contain all values related to the circle that we want to create like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- Next, we will create our custom that will contain all values related to the circle that we want to create. We are naming this object `Circle` and will create it using the following special syntax for function where the name's first letter is capitalized, meaning that it is now initializing a class of objects:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle()
{
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- In the arguments of this `Circle` function, take all values are arguments that you would need to persist for the circle no matter what its motion is. This will include the circle's `x`, `y`, `radius` and `color` values that we are using to create the circles using the `.arc()` method. Additionally, this will also include two new arguments: `horizontalMovementSpeed` and `verticalMovementSpeed`. To replicate real-life floating motion, the circles will move both horizontally and vertically at certain speeds, and since these speeds need to be the same across different frames (i.e. we don't want the circle to suddenly start moving faster or slower in any direction each time the frame is updated, but just move smoothly with the same speeds) that means that these will also have to be stored in the object to persist. Once these values have been taken as arguments, we can set the same attributes of the object using the `this.` keyword equal to the given arguments like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- Now, we need to initialize and add these `Circle` objects into our `circleArray` array. To do so, we need to modify the `drawCircles()` function. First, we will declare variables for `horizontalMovementSpeed` and `verticalMovementSpeed` since we will be needing these are arguments to create our `Circle` object, and initialize them with values between -0.5 and 0.5 (where negative values correspond to leftward/downward movement speed and positive values correspond to rightward/upward movement speeds; think of x-y planes) using the line `Math.random() - 0.5`:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient, horizontalMovementSpeed, verticalMovementSpeed;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```
Next, we create a new instance of the `Circle` object using the `new` keyword, enter arguments for `x`, `y`, `radius`, `color`, `horizontalMovementSpeed` and `verticalMovementSpeed` into it, and add this newly created instance of the object into the `circleArray` array using the `.push()` method like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient, horizontalMovementSpeed, verticalMovementSpeed;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- Now that we have all values stored in the `circleArray` array, we must use them to actually create the circles. To do so, we will create a `.drawCircle()` method for the `Circle` object. We can declare this method like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient, horizontalMovementSpeed, verticalMovementSpeed;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        canvas2DContextVariable.beginPath();
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        canvas2DContextVariable.arc(x, y, radius, startAngle, endAngle);
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        gradient = canvas2DContextVariable.createRadialGradient(x - (radius/2), y - (radius/2), 0, x, y, radius);
        gradient.addColorStop(0.2, '#FFFFFF');
        gradient.addColorStop(1.0, color + "CC");
        canvas2DContextVariable.fillStyle = gradient;
        canvas2DContextVariable.fill();
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```
Then we will move our code for drawing the arc using the `.arc()` method, and all other styling features for its gradient inside the `.drawCircle()` method making sure that for each of the variables used in those lines of code, we add a `this.` keyword before each of them except `startAngle` and `endAngle`:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, gradient, horizontalMovementSpeed, verticalMovementSpeed;
    const startAngle = 0;
    const endAngle = Math.PI * 2;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```
Time for some cleanup. Since we understand that the `startAngle` and `endAngle` variables values for each of the circles will be the same, we will create global constants for these two variables and remove them from our `drawCircles()` function. In addition, since there is no longer any `gradient` variable being used in the `drawCircles()` function either, we will remove that from there too:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```

- Eventhough we have defined the `.drawCircle()` method, we won't actually be able to see any circles since we are not really calling it inside the `.drawCircles()` function anywhere; we're just __creating__ the `Circle` objects.

- An important thing to note here is the idea of understanding that every time that we want the circle (bubble) to move horizontally or vertically, we are taking the same circle and re-drawing it with an updated `x` or `y` value. So moving the circle means calling the `.drawCircle()` method again and again with updated values on the same `Circle` object. This is basically the gist of animation too and helps us set the scene to introduce the `window.requestAnimationFrame()` method.

- The `window.requestAnimationFrame()` built-in method basically allows us to create a new 'frame' of drawings that when put a top of each other, create the illusion of motion. This is similar to how a flip-book animation works in real life.

- The way to use the `window.requestAnimationFrame()` method is to create a function which calls the `window.requestAnimationFrame()` method on itself like something similar to the following:
```
function animateMovingCircles()
{
    window.requestAnimationFrame(animateMovingCircles);
    // Rest of the function body...
}
```
What this does is create a loop in which every time the page or `canvas` is 'refreshed', the `animateMovingCircles()` function is called again to create a new 'frame'. This is kind of difficult to understand, I know.

- To incorporate the actual moving circle animation part into our code, let's take things step by step. First, we need a code that actually changes the `x` and `y` values of the `Circle` object according to the `horizontalMovementSpeed` and `verticalMovementSpeed` assigned to it. For this, we create the `.moveCircle()` method in the `Circle` object just like the `.drawCircle()` method like below. The basic explanation of the code is that you increment the `Circle`'s `x` value by the `horizontalMovementSpeed` and the `y` value by the `verticalMovementSpeed` value every time this method is called, and then re-draw the new `Circle` with these updated values by calling the `.drawCircle()` method again. Since the `horizontalMovementSpeed` and `verticalMovementSpeed` values can also be negative, and greater than the horizontal and vertical lengths of the window, which would make the circles go out of the window and not be seen, the `if` statements have been put in place. The reason the `+/- this.radius` has been added to the `if` statements is because a circle reaching or created on the very border would not update its `x` and `y` values otherwise and remain stuck there:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };

    this.moveCircle = function()
    {
        if (this.x + this.radius > window.innerWidth || this.x - this.radius < 0)
        {
            this.horizontalMovementSpeed = - this.horizontalMovementSpeed;
        }
        this.x = this.x + this.horizontalMovementSpeed;
        if (this.y + this.radius > window.innerHeight || this.y - this.radius < 0)
        {
            this.verticalMovementSpeed = - this.verticalMovementSpeed;
        }
        this.y = this.y + this.verticalMovementSpeed;
        this.drawCircle();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
```
Again, eventhough we have also defined the `.moveCircle()` method, we won't actually be able to see any circles or any moving circles since we are not really calling it inside the `.drawCircles()` function or anywhere else. In fact, since we want the `Circle` object to move in each frame, we need to call this function every time the new frame is being created (i.e. the `canvas` is being refreshed). To do so, we create the `animateMovingCircles()` function which calls the `window.requestAnimationFrame()` method that provides us all these frames, and call the `.moveCircle()` method inside it for all `Circle` objects we have created and stored in our `circleArray` array which we can reference using a simple for-loop. Additionally, we need to call the `animateMovingCircles()` function at the very bottom of our code as well:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };

    this.moveCircle = function()
    {
        if (this.x + this.radius > window.innerWidth || this.x - this.radius < 0)
        {
            this.horizontalMovementSpeed = - this.horizontalMovementSpeed;
        }
        this.x = this.x + this.horizontalMovementSpeed;
        if (this.y + this.radius > window.innerHeight || this.y - this.radius < 0)
        {
            this.verticalMovementSpeed = - this.verticalMovementSpeed;
        }
        this.y = this.y + this.verticalMovementSpeed;
        this.drawCircle();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

function animateMovingCircles()
{
    window.requestAnimationFrame(animateMovingCircles);
    for (let i = 0; i < circleArray.length; i++)
    {
        circleArray[i].moveCircle();
    }
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
animateMovingCircles();
```
If you look at the current `canvas` now, you will see all of the circles in motion in a really cool fun way which seems quite artistic on its own. The circles basically leave a trail behind of their previous position which looks cool, but isn't what we ideally need. This is because the `canvas`'s context needs to be cleared each time a new frame is made when the position of the `Circle` object changes. To do so, we use the `.clearRect()` method for the `canvas2DContextVariable` object. As arguments, this function requires the coordinates of the entire area to be cleared - in our case, that is the whole window. To incorporate this, we simply add that to our `animateMovingCircles()` function code right below the `window.requestAnimationFrame()` method like so:
```
const colorPalette = ['#A7F2F2', '#D6C9F2', '#C9B6F2', '#EDC9F2', '#F1A7F2'];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

function Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed)
{
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.color = color;
    this.horizontalMovementSpeed = horizontalMovementSpeed;
    this.verticalMovementSpeed = verticalMovementSpeed;

    this.drawCircle = function()
    {
        canvas2DContextVariable.beginPath();
        canvas2DContextVariable.arc(this.x, this.y, this.radius, startAngle, endAngle);
        this.gradient = canvas2DContextVariable.createRadialGradient(this.x - (this.radius/2), this.y - (this.radius/2), 0, this.x, this.y, this.radius);
        this.gradient.addColorStop(0.2, '#FFFFFF');
        this.gradient.addColorStop(1.0, this.color + "CC");
        canvas2DContextVariable.fillStyle = this.gradient;
        canvas2DContextVariable.fill();
    };

    this.moveCircle = function()
    {
        if (this.x + this.radius > window.innerWidth || this.x - this.radius < 0)
        {
            this.horizontalMovementSpeed = - this.horizontalMovementSpeed;
        }
        this.x = this.x + this.horizontalMovementSpeed;
        if (this.y + this.radius > window.innerHeight || this.y - this.radius < 0)
        {
            this.verticalMovementSpeed = - this.verticalMovementSpeed;
        }
        this.y = this.y + this.verticalMovementSpeed;
        this.drawCircle();
    };
}

function resizeCanvas()
{
    canvasVariable.width = window.innerWidth;
    canvasVariable.height = window.innerHeight;
}

function drawCircles()
{
    let x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed;
    for (let i = 0; i < totalCircles; i++)
    {
        x = Math.floor(Math.random() * window.innerWidth);
        y = Math.floor(Math.random() * window.innerHeight);
        radius = Math.floor(Math.random() * 50) + 10;
        color = colorPalette[Math.floor(Math.random() * colorPalette.length)];
        horizontalMovementSpeed = Math.random() - 0.5;
        verticalMovementSpeed = Math.random() - 0.5;
        circleArray.push(new Circle(x, y, radius, color, horizontalMovementSpeed, verticalMovementSpeed));
    }
}

function initializeCanvas()
{
    resizeCanvas();
    drawCircles();
}

function animateMovingCircles()
{
    window.requestAnimationFrame(animateMovingCircles);
    canvas2DContextVariable.clearRect(0, 0, window.innerWidth, window.innerHeight);
    for (let i = 0; i < circleArray.length; i++)
    {
        circleArray[i].moveCircle();
    }
}

window.addEventListener('resize', function()
{
    resizeCanvas();
    drawCircles();
});

initializeCanvas();
animateMovingCircles();
```
Voila! It looks beautiful.

- Let's see if we need a little refractoring just to be safe too. Well, the order suggested by ChatGPT looks like this:
```
// 1. Constants
const colorPalette = [...];
const totalCircles = 200;
const startAngle = 0;
const endAngle = Math.PI * 2;

// 2. Canvas and global state
let canvasVariable = document.querySelector('canvas');
let canvas2DContextVariable = canvasVariable.getContext('2d');
let circleArray = [];

// 3. Classes / constructor functions
function Circle(...) { ... }

// 4. Helper functions
function resizeCanvas() { ... }
function drawCircles() { ... }

// 5. Initialization logic
function initializeCanvas() { ... }
function animateMovingCircles() { ... }

// 6. Event listeners
window.addEventListener('resize', function() {
    resizeCanvas();
    drawCircles();
});

// 7. Program entry
initializeCanvas();
animateMovingCircles();
```
I guess we're good. (Woohoooooooo!)




























































































































































































































- Okay dude, enough is enough. I am going to sit down and I am going to understand `v-for` VueJS directives even if it's the last thing thing I do. Bring. It. On.

- The idea of the `v-for` VueJS directive is to render lists of objects. Now whenever we talk about lists, we usually mean arrays so we are talking about listing arrays using `v-for` basically. I am going to demonstrate this in steps (so I can understand as I go too mostly). Going to start by creating an array `originalArray` which has an `id` and `text` value - the `id` is incremented using an `id` variable:
```
<script setup>
import { ref } from 'vue';

let id = 0;
const originalArray = ref
([
    {
        id: id++,
        text: 'This is the first array item'
    },
    {
        id: id++,
        text: 'This is the second array item'
    },
    {
        id: id++,
        text: 'This is the third array item'
    }
])
</script>
```
To render the array items, I will declare the `<template>` section and create a `<ul>` element inside it. Inside the `<ul>` element, I will create a `<li>` element and in this, I will use the `v-for` VueJS directive. The `v-for` directive requires an array to iterate over, an alias to refer to the items in the array while it is iterating over them, and a key to bind to a unique value in each item in the array to identify each item so Vue can correctly reuse, update, or remove DOM elements during re-renders. The syntax it follows to do so is `v-for="(arrayItem) in originalArray" v-bind:key="arrayItem.id"` as shown below. Over here, the array we are iterating over is `originalaArray`, the alias used for iterating over the items in the array is `arrayItem` and the key the `v-for` directive is bound to is the `id` value of each item in the array:
```
<script setup>
import { ref } from 'vue';

let id = 0;
const originalArray = ref
([
    {
        id: id++,
        text: 'This is the first array item'
    },
    {
        id: id++,
        text: 'This is the second array item'
    },
    {
        id: id++,
        text: 'This is the third array item'
    }
])
</script>

<template>
    <ul>
        <li v-for="(arrayItem) in originalArray" v-bind:key="arrayItem.id">
            ID: {{ arrayItem.id }}, Text: {{ arrayItem.text }}
        </li>
    </ul>
</template>
```
We can also display the index of items in the array similarly by using an alias for the index for the array items as well and changing the `v-for` directive syntax to `v-for="(arrayItem, arrayItemIndex) in originalArray"`:
```
<script setup>
import { ref } from 'vue';

let id = 0;
const originalArray = ref
([
    {
        id: id++,
        text: 'This is the first array item'
    },
    {
        id: id++,
        text: 'This is the second array item'
    },
    {
        id: id++,
        text: 'This is the third array item'
    }
])
</script>

<template>
    <ul>
        <li v-for="(arrayItem, arrayItemIndex) in originalArray" v-bind:key="arrayItem.id">
            ID: {{ arrayItem.id }}, Text: {{ arrayItem.text }}, Index: {{arrayItemIndex}}
        </li>
    </ul>
</template>
```




































- I am going to place the code here and then explain its lines one by one:
```
<script setup>
import { ref } from 'vue';

// give each arrayItem a unique id
let id = 0;

const newArray = ref('')
const originalArray = ref
([
    {
        id: id++,
        text: 'This is the first array item'
    },
    {
        id: id++,
        text: 'This is the second array item'
    },
    {
        id: id++,
        text: 'This is the third array item'
    }
])

function addItemToArray()
{
    originalArray.value.push
    ({
        id: id++,
        text: newArray.value
    });
    newArray.value = '';
}

function removeItemFromArray(arrayItemToRemove)
{
    originalArray.value = originalArray.value.filter((t) => t !== arrayItemToRemove);
}
</script>

<template>
    <form v-on:submit.prevent="addItemToArray">
        <input v-model="newArray" required>
        <button>
            Add Item
        </button>
    </form>
    <ul>
        <li v-for="(arrayItem, arrayItemIndex) in originalArray" v-bind:key="arrayItem.id">
            ID: {{ arrayItem.id }}, Text: {{ arrayItem.text }}, Index: {{arrayItemIndex}}
            <button v-on:click="removeItemFromArray(arrayItem)">
                Delete Item
            </button>
        </li>
    </ul>
</template>
```


- VueJS directives:
v-cloak -->
v-model --> two-way data binding?
v-if -->
v-elseif -->
v-else -->
- Vue events:
v-on:click -->





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
- So... I just spent the last 1 hour (I think) figuring out my LinkedIn About section and banner. What a lot of doom-scrollling that was.
- Also: 'brain rot', 'doom-scrolling', 'vibe coding' — what an abomination of words and terms and states of life. Who even invented these? What happened to normal, sophisticated vocabulary? I hate this generation.
- Maybe I _should_ get started on Candor. I think it is the perfect project for me, but what tech stack do I choose? I will have to think about this.
- Dudeeeeeeeeeeeeee, I just started Aletheia on the side. This is going to be an amazing project In Shaa Allah.
- Just because I am already feeling bad, I'm just going to do a mental count of programming stuff I did not get flawlessly right in the first go just to make myself feel worse at 2:20 am in the morning - that doesn't make sense to you? Well me neither.
- A new very eccentric thought: always negotiate for higher salary because of how much it mattered how consistently Quaid-e-Azam negotiated for Pakistan's borders and how much he could have affected things if he had won.
- I don't think it is healthy how okay I am with no one loving me. I _think_ this is how serial killers are made.
- Yeah, I miss my Quantum-first-time-boba-drinking... friends.
- I am not able to concentrate, I realize. Some days, it is just impossible for me to word a simple thought out. It is making things difficult at work. Maybe I should see a doctor. I hate doctors so much... No amount of education will make me like a doctor. Snobs. Ugh, but my sister is a doctor.
- Maybe life has a way of taking the people we have hurt away from us. Maybe last year was a lesson in that sense.
- Wow. People actually mistake naivety for dumbness. I've got this world wrapped around my fingers lol.
- They say that everyone dies alone. I am pretty sure that I will also live alone.
- It's funny how your code working can shift your whole worldview around. Dare I say, I am even slightly happy today.
- None of this is making the final cut. What a shame.
- All I ever wanted was to spread a soft linen sheet over the cool grass in the football ground, lie down and face the perfectly blue, windy sky in the evening after getting back from the masjid after Asr, and watch the sunset in silence in the heartwarming company of a good friend. The irony is that there were so many good people, so, so many, and yet no real friends. Four years and nothing like this. Not even one time. Six years and nothing like this. Nine years and nothing like this. Eighteen years and nothing like this. A whole life and yet, nothing like this... Grass, company, silence, sunsets.
- 