<h1 align="center">Vision Systems <br/> Monochromatic Portfolio Template </h1>


<h3 align="center">🚀 Introduction</h3>

**Vision Systems** is a high-performance, **monochromatic portfolio template** designed for **developers, creatives, and agencies**. This theme blends **raw minimalism, modern interactions, and editorial aesthetics**, making it an ideal choice for those who want to stand out.

Built with **HTML5, CSS3, jQuery, and GSAP**, this template provides smooth animations, AJAX-powered project overlays, and a custom scrolling experience.

---

<h3 align="center">📦 Features</h1>

- ✔ **Brutalist Aesthetic** – Bold, high-contrast typography with minimal distractions.
- ✔ **Monochromatic UI/UX** – Inspired by **industrial design language**
- ✔ **Smooth Scrolling Navigation** – GSAP-enhanced smooth scrolling.
- ✔ **Custom Cursor** – Interactive, minimal cursor effect.
- ✔ **Dynamic AJAX Project Overlays** – Load portfolio projects seamlessly.
- ✔ **SEO Optimized** – Meta tags, structured data for better ranking.
- ✔ **Fully Responsive** – Mobile, tablet, and desktop-ready.
- ✔ **Dark Mode First** – Sleek black UI with golden highlights.
- ✔ **Custom Animations** – GSAP-powered transitions, parallax, and glitch effects.

---

<h3 align="center">📂 File Structure</h3>

```bash
/vision-systems/
│── index.html        → Main HTML File
│── /css/
│   ├── style.css     → Main Stylesheet
│   ├── style.min.css → Minified Stylesheet
│── /js/
│   ├── script.js     → Main JavaScript
│   ├── script.min.js → Minified JavaScript
│── /images/          → Static Image Assets
│── /projects/        → AJAX Portfolio Data
│── /fonts/           → Custom Fonts
│── /docs/            → Documentation
│── README.md         → This File
```

---

<h3 align="center">⚡ Installation | Theme Forest</h1>

### **1️⃣ Download & Extract**
- Download the ZIP file from ThemeForest.
- Extract the `vision-systems` folder.

### **2️⃣ Open in Browser**
- Open `index.html` in Chrome, Firefox, Safari, or Edge.
- Enjoy the full experience locally.



<h3 align="center">💻 Installation | Source</h1>

If you want to **install and customize the template from GitHub**, follow these steps:

### **🔹 Clone the Repository**
```bash
git clone https://github.com/your-username/vision-systems.git
cd vision-systems
```

### **🔹 Minification Commands**
While this is a **pure HTML/CSS/JS** template, if you want to work with **minification & optimizations**, any change to scripts.js or style.css require  you run the necessary commands:

**scripts.js changes**

```bash
npx terser js/script.js -o js/script.min.js --compress --mangle
```

**style.css changes**

```bash
npx clean-css-cli -o css/style.min.css css/style.css
```

---

<h3 align="center">🎨 Customization Guide</h3>

### **🖌️ Editing Colors & Typography**
Modify the **primary colors & fonts** inside `/css/style.css`:
```css
:root {
    --primary-color: #f5ba00;
    --text-color: #ffffff;
    --background-color: #000000;
}
```

### **🛠 Editing Sections**

Find the relevant section inside index.html and modify content:

```html
<section id="manifesto">
    <div class="container">
        <h1 class="manifesto-title">VISION.</h1>
        <p class="manifesto-text">I create <span class="highlight">digital experiences</span> that disrupt conventions.</p>
    </div>
</section>
```

### **📜 Adding Portfolio Projects**

To add more projects, update index.html under **Works Section**:
```html
<div class="work-item" data-project="new-project">
    <a href="#" class="work-link">
        <img src="images/new-project.jpg" alt="New Project">
        <h3 class="work-title">New Project</h3>
    </a>
</div>
```

Then, create a new project file inside /projects/:
```html
<!-- /projects/new-project.html -->
<h2>New Project</h2>
<p>Description of the project...</p>
```
---

<h3 align="center">🔌 Dependencies & Libraries</h3>

- jQuery
- GSAP
- Google Fonts: Anton & Inter
- AJAX for Dynamic Project Loading

---

<h3 align="center">📄 License & Usage</h3>

**Personal & Commercial Use Allowed** – As per the ThemeForest License.
- ✔ Can be used for portfolios, agencies, creative work.
- 🚫 Cannot be redistributed or resold without permission.