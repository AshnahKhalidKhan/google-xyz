# google-xyz
Designed to improve resume-making and tailoring by helping you restructure your resume work and project experiences to align with the notorious Google XYZ formula, by leveraging AI.

Accessible via: https://ashnahkhalidkhan.github.io/google-xyz/


#### Resources used:
- https://pages.github.com/ (Project site > Start from scratch > Follow all instructions there).
- I need to make sure I use ReactJS or VueJS or some other fancy JS because I need to update the values being outputted multiple times.
- Another thing needed is to incorporate GitHub Actions because... why not? It's good practice for learning GitHub Actions and its workings.
- Okie dokie, learning the order of Git commands I need each to update this repository via this video by Net Ninja on YouTube: https://www.youtube.com/watch?v=QyFcl_Fba-k
- So some GitHub commands and what they do I learned on the way:
git status -> tells me the branch I am currently in
git add . -> add all changes (that is what the dot in the end is for) to the Git staging area; it allows you to select which changes you want to include in your next commit. Without using git add, no changes would be recorded in the commit.
git commit -m "descriptive commit message" -> basically the actual command that commits all changes to the repository
git push origin <branch name> -> pushes all commits to the branch (in our case, branch name will be 'main'); basically updates the branch with all commits
- So, I am back. Need to fix this git not committing issue. Let's see what I can do.
- I fixed the git not committing issue! Had to generate a Personal Access Token for this laptop. I think I should include the steps here, but maybe if I make that many projects, I won't need to remember (???) Who knows? Let's take things one step at a time.
- Fixing the git not committing issue:
(On laptop) Windows Credential Manager > Windows Credentials > git:https://github.com > Remove > (On github.com website) Profile > Settings > Developer Settings > Enter all details and give all permissions > Generate Token > Copy and save somewhere > (On laptop) Open the terminal on VS Code > git push origin main > (pop-up) Token > Enter token you just copied > OK
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
- Okay so past the two core features of Vue. Now, there is another section on "Ways of Using Vue" which is for experienced developers. They did give a bunch of usecases that honestly just sounded a little too intimidating for me at the moment so I am simply skipping over them at the moment, but here is the link if I'm ever feeling courageous in the future (already proud of you, Future Me if you're reading this): https://vuejs.org/guide/extras/ways-of-using-vue.html
- I have been reading all over the place about how Vue is called "The Progressive Framework", and they only just explained why. Apparently it's because "it's a framework that can grow with you and adapt to your needs"; the core knowledge about how Vue works is shared across all - beginner, intermediate, expert, and everything in between - use cases.
- At the heart of writing code for VueJS, is following a file format called Single-File Component or SFC or *.vue files.
- Vue SFC files contain 3 sections: the component's logic (JavaScript), template (HTML), and styles (CSS) in a single file. These are denoted by the `<script>`, `<template>` and `<style>` tags respectively. To put it into more human (sane) form:
component's logic -> Javascript -> `<script>`
component's template -> HTML -> `<template>`
component's styles -> CSS -> `<style>`
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






#### Other random thoughts I get while working on this:
- I have realized when I first learn things, I need to watch the same videos multiple times sometimes before I understand them. What a roadblocker for progress, isn't it?
- I just got an email from HR... I need to commit this and take a moment to reflect on everything. This is huge.
- Okay so why in the world is this so hard again? I am SO sleepy.
- I have this insane idea to club together all incremental faces of the website and make a timelapse of it when launching the tool. That would be pretty cool I think.
- So... major