# Implementation Guide

Quick reference for implementing the [COMPANY NAME] design system.

## Quick Start

1. **Include the CSS file:**
   ```html
   <link rel="stylesheet" href="design-system.css">
   ```

2. **Add Google Fonts:**
   ```html
   <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Inter+Tight:wght@400;500;600&display=swap" rel="stylesheet">
   ```

3. **Use the container class for page width:**
   ```html
   <div class="container">
     <!-- Your content -->
   </div>
   ```

## Component Usage

### Buttons

```html
<!-- Primary (Black) -->
<button class="btn btn-primary">Get started</button>

<!-- Primary (Accent Blue) -->
<button class="btn btn-primary-accent">Book a demo</button>

<!-- Secondary -->
<button class="btn btn-secondary">Learn more</button>

<!-- Ghost -->
<button class="btn btn-ghost">Cancel</button>
```

### Inputs

```html
<label>Name</label>
<input type="text" class="input" placeholder="Enter your name">

<label>Message</label>
<textarea class="input" placeholder="Your message..."></textarea>

<!-- Error state -->
<input type="email" class="input input-error" value="invalid">
<span class="input-helper input-error-text">That email looks wrong.</span>
```

### Cards

```html
<!-- Default card -->
<div class="card">
  <h4>Card Title</h4>
  <p>Card content goes here.</p>
</div>

<!-- Hover effect -->
<div class="card card-hover">
  <h4>Interactive Card</h4>
  <p>This card has hover effects.</p>
</div>

<!-- With accent border -->
<div class="card card-accent">
  <h4>Featured Card</h4>
  <p>This card has a subtle accent border.</p>
</div>
```

### Badges

```html
<span class="badge badge-primary">New</span>
<span class="badge badge-success">Active</span>
<span class="badge badge-error">Error</span>
<span class="badge badge-warning">Warning</span>
<span class="badge badge-info">Info</span>
```

### Alerts

```html
<div class="alert alert-success">
  <strong>Success:</strong> Your message has been sent.
</div>

<div class="alert alert-error">
  <strong>Error:</strong> Something went wrong.
</div>
```

## Layout Patterns

### Section Spacing

```html
<section class="section">
  <!-- Content with automatic spacing -->
</section>
```

### Dividers

```html
<hr class="divider">
```

### Grid Layout

```html
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: var(--space-6);">
  <div class="card">Card 1</div>
  <div class="card">Card 2</div>
  <div class="card">Card 3</div>
</div>
```

## Typography

Use semantic HTML and the CSS will handle styling:

```html
<h1>Main Page Title</h1>
<h2>Section Title</h2>
<h3>Subsection Title</h3>
<h4>Card Title</h4>
<p>Body text paragraph.</p>
<p class="text-muted">Secondary text.</p>
<small>Small text or captions.</small>
```

## Color Usage

### CSS Variables

All colors are available as CSS variables:

```css
/* Neutrals */
var(--bg)
var(--text)
var(--text-muted)
var(--border)

/* Primary Accent */
var(--accent-50)
var(--accent-100)
var(--accent-300)
var(--accent-500)
var(--accent-700)
var(--accent-800)

/* Status Colors */
var(--success-100)
var(--success-600)
var(--error-100)
var(--error-600)
/* etc. */
```

### Usage Rules

- **Backgrounds:** Use `--accent-50` to `--accent-100` for subtle highlights
- **Interactive elements:** Use `--accent-500` to `--accent-700` for buttons and links
- **Text accents:** Use `--accent-800` for emphasized text
- **Borders:** Use `--border` or `--border-strong` for dividers

## Spacing

Use the spacing scale consistently:

```css
var(--space-1)   /* 4px */
var(--space-2)   /* 8px */
var(--space-3)   /* 12px */
var(--space-4)   /* 16px */
var(--space-6)   /* 24px */
var(--space-8)   /* 32px */
var(--space-12)  /* 48px */
var(--space-16)  /* 64px */
var(--space-18)  /* 72px */
var(--space-24)  /* 96px */
```

## Border Radius

```css
var(--r-sm)    /* 4px - Small elements */
var(--r-md)    /* 8px - Buttons, inputs */
var(--r-lg)    /* 12px - Small cards */
var(--r-xl)    /* 20px - Default cards */
var(--r-2xl)   /* 28px - Large cards */
var(--r-full)  /* 999px - Pills, badges */
```

## Responsive Breakpoints

- **Mobile:** < 640px
- **Tablet:** 640px – 1024px
- **Desktop:** > 1024px

Typography automatically adjusts on mobile. Use media queries for layout changes:

```css
@media (min-width: 1024px) {
  /* Desktop styles */
}
```

## Accessibility Checklist

- ✅ All interactive elements have focus states
- ✅ Color contrast meets WCAG AA (4.5:1 minimum)
- ✅ Form inputs have labels and helper text
- ✅ Error states are clearly indicated
- ✅ Buttons have disabled states
- ✅ Links are distinguishable from body text

## Common Patterns

### Hero Section

```html
<section class="section">
  <div class="container">
    <h1>Main Headline</h1>
    <p class="text-muted" style="max-width: 600px; margin: var(--space-6) auto;">
      Subheading text that explains the value proposition.
    </p>
    <div style="display: flex; gap: var(--space-4); justify-content: center; margin-top: var(--space-8);">
      <button class="btn btn-primary">Get started</button>
      <button class="btn btn-secondary">Learn more</button>
    </div>
  </div>
</section>
```

### Feature Cards Grid

```html
<section class="section">
  <div class="container">
    <h2 style="text-align: center; margin-bottom: var(--space-12);">Features</h2>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: var(--space-6);">
      <div class="card">
        <h4>Feature 1</h4>
        <p class="text-muted">Description of feature 1.</p>
      </div>
      <div class="card">
        <h4>Feature 2</h4>
        <p class="text-muted">Description of feature 2.</p>
      </div>
      <div class="card">
        <h4>Feature 3</h4>
        <p class="text-muted">Description of feature 3.</p>
      </div>
    </div>
  </div>
</section>
```

### Contact Form

```html
<form style="max-width: 500px; margin: 0 auto;">
  <label style="display: block; margin-bottom: var(--space-2); font-weight: 500;">Name</label>
  <input type="text" class="input" required>
  
  <label style="display: block; margin-top: var(--space-6); margin-bottom: var(--space-2); font-weight: 500;">Work email</label>
  <input type="email" class="input" required>
  
  <label style="display: block; margin-top: var(--space-6); margin-bottom: var(--space-2); font-weight: 500;">Message</label>
  <textarea class="input" required></textarea>
  
  <button type="submit" class="btn btn-primary" style="margin-top: var(--space-6);">Send</button>
</form>
```

## Next Steps

1. Replace all `[COMPANY NAME]` placeholders with your actual company name
2. Customize accent colors if blue doesn't fit your brand
3. Add your specific content using the writing style guide
4. Test on mobile, tablet, and desktop
5. Verify accessibility with screen readers and keyboard navigation

## View Examples

Open `component-examples.html` in your browser to see all components in action.

