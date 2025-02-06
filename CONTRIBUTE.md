# **🛠️ Contributing to ThemeForest Templates Collection**

Thank you for your interest in contributing to the **ThemeForest Templates Collection**! 🚀  
This repository houses multiple **high-quality, customizable web themes** for **developers, agencies, and businesses**. Your contributions—whether through new themes, improvements, or bug fixes—help make these templates even better.

## **📌 How to Contribute**

### **1️⃣ Fork & Clone the Repository**
First, fork the repository and clone it to your local machine.

```bash
git clone https://github.com/dj-io/themeboy.git
cd themeboy
```

---

2️⃣ **Explore the Repository Structure**

Each theme is a **self-contained project**, following this structure:

```bash
/themeboy/
│── /theme-1/            → Portfolio Theme
│── /theme-2/            → Business Landing Page
│── /theme-3/            → SaaS Startup Template
│── /theme-4/            → E-Commerce Theme
│── /assets/             → Parent Repo assets (icons, images, logos)
│── LICENSE.md           → Licensing Information
│── README.md            → Main Repository Readme
│── CONTRIBUTE.md        → Contribution Guidelines
```

4️⃣ **Adding a New Theme**

If you’re submitting a **new ThemeForest-ready theme**, follow these steps:

🔹 **Step 1: Create a New Theme Folder**

Inside `/themeboy/`, create a new folder with your theme’s name.

Example:

```bash
/themeboy/
│── /vision-portfolio/
│── /agency-modern/
│── /new-theme/   → Your new theme
```

🔹 **Step 2: Maintain a Clean Structure**

Each theme should follow this structure:

```bash
/new-theme/
│── index.html        → Main HTML file
│── /css/             → Stylesheets
│── /js/              → JavaScript files
│── /images/          → Optimized web images
│── /docs/            → Theme Documentation
│── /projects/        → Portfolio-related data (if applicable)
│── README.md         → Theme-specific Readme
```

🔹 **Step 3: Write a Theme README**

Each new theme should contain a README.md with:
 - Theme Overview
 - Features
 - Installation Guide
 - Customization Instructions
 - File Structure

 5️⃣ **Making a Pull Request**

Once you’ve added your changes, commit and push them:

```bash
git add .
git commit -m "Added [new theme name] - a [short description]"
git push origin feature/[new-theme-name]
```

Then, create a **Pull Request (PR)**:

Clearly describe the theme, updates, or fixes.

- ✔ Provide screenshots or a live demo link if applicable.
- ✔ Ensure proper file structure and naming conventions.


6️⃣ **Code Style Guidelines**

To maintain consistency across themes, follow these best practices:

 - Use semantic HTML5 elements (`<section>`, `<article>`, `<header>`).
 - Keep CSS modular and maintainable (/css/style.css should be well-structured).
 - JavaScript should avoid bloated libraries unless necessary.
 - Optimize images in /images/ for fast loading speeds.
 - Minify CSS & JS (style.min.css, script.min.js for production).

---

### 🚀 Thank You for Contributing!

Your contributions help make ThemeForest templates better, faster, and more accessible.