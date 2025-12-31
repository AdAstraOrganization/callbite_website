# [COMPANY NAME] Design System v1

## 1) Brand Direction

**Positioning:** [WHAT WE DO IN 1 SENTENCE]
**Tone:** calm, direct, technical-but-human.
**Keywords:** precise, modern, confident, fast, reliable.

**Voice Rules**

* Say what it does. Cut the rest.
* Use active voice.
* Avoid hype ("revolutionary", "best-in-class").
* Prefer concrete outcomes over vague promises.

---

## 2) Color System

### Core Neutrals (Default Look)

Use these everywhere. Accent colors are for emphasis only.

**Tokens**

* `--bg` (page): `#FFFFFF`
* `--surface` (cards): `#FFFFFF`
* `--text` (primary): `#0B0B0B`
* `--text-muted`: `#6E6E6E`
* `--border`: `#E5E5E5`
* `--border-strong`: `#DCDCDC`
* `--bg-muted`: `#F2F2F2`

### Accent Palette (Expressive, Used Sparingly)

Pick **one accent per section** (don't rainbow the whole page). Default to **Blue** as primary accent.

**Primary Accent (Recommended): Blue**

* `--accent-50:  #F2F5FC`
* `--accent-100: #E1E8F9`
* `--accent-300: #A1BAEC`
* `--accent-500: #5D79DF`
* `--accent-700: #3C48B9`
* `--accent-800: #384094`

**Secondary Accents (For Tags/Badges Only)**

* **Green (Success):** `#10B981` (600) + `#D1FAE5` (100)
* **Red (Error):** `#EF4444` (600) + `#FEE2E2` (100)
* **Yellow (Warning):** `#F59E0B` (600) + `#FEF3C7` (100)
* **Cyan/Teal (Info):** `#06B6D4` (600) + `#CFFAFE` (100)

### States

* **Success:** green 600-ish (for icons) + green 100-ish (for background)
* **Warning:** yellow 600-ish + yellow 100-ish
* **Error:** red 600-ish + red 100-ish
* **Info:** cyan/teal 600-ish + 100-ish

### Usage Rules

* **Backgrounds:** Use light tints (50–100) for subtle highlights
* **Accents:** Use mid tints (300–500) for interactive elements
* **Text Accents:** Use dark tints (800) for emphasis
* **Borders:** Use neutral 100–200
* **Links / Primary Buttons:** accent 600–700
* **Subtle Highlights:** accent 50–100
* **Badges:** accent 100 background + accent 800 text

### Accessibility

* Text on white: minimum 4.5:1 contrast (WCAG AA)
* Text on colored backgrounds: minimum 4.5:1 contrast
* Interactive elements: minimum 3:1 contrast for focus states
* Use `--text-muted` for secondary text, never for primary content

### CSS Variables (Drop-In Ready)

```css
:root {
  /* Core Neutrals */
  --bg: #FFFFFF;
  --surface: #FFFFFF;
  --text: #0B0B0B;
  --text-muted: #6E6E6E;
  --border: #E5E5E5;
  --border-strong: #DCDCDC;
  --bg-muted: #F2F2F2;

  /* Primary Accent (Blue) */
  --accent-50: #F2F5FC;
  --accent-100: #E1E8F9;
  --accent-300: #A1BAEC;
  --accent-500: #5D79DF;
  --accent-700: #3C48B9;
  --accent-800: #384094;

  /* Success */
  --success-100: #D1FAE5;
  --success-600: #10B981;

  /* Error */
  --error-100: #FEE2E2;
  --error-600: #EF4444;

  /* Warning */
  --warning-100: #FEF3C7;
  --warning-600: #F59E0B;

  /* Info */
  --info-100: #CFFAFE;
  --info-600: #06B6D4;

  /* Border Radius */
  --r-sm: 4px;
  --r-md: 8px;
  --r-lg: 12px;
  --r-xl: 20px;
  --r-2xl: 28px;
  --r-full: 999px;
}
```

---

## 3) Typography System

### Fonts (Free, Modern Clean Style)

* **Headings/UI:** `Inter Tight` (or `Inter` if Tight isn't available)
* **Body:** `Inter`
* **Fallbacks:** `system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif`
* **Non-Latin Fallback:** `Noto Sans`

### Type Scale (Desktop)

| Element | Size | Line Height | Weight | Letter Spacing |
|---------|------|-------------|--------|----------------|
| H1 | 48px | 56px | 600 | -0.02em |
| H2 | 36px | 44px | 600 | -0.01em |
| H3 | 28px | 36px | 600 | 0 |
| H4 | 20px | 28px | 600 | 0 |
| Body | 16px | 24px | 400 | 0 |
| Small | 14px | 20px | 400 | 0 |
| Label | 12px | 16px | 500 | 0.01em |

### Mobile Type Scale

| Element | Size | Line Height | Weight |
|---------|------|-------------|--------|
| H1 | 32px | 40px | 600 |
| H2 | 28px | 36px | 600 |
| H3 | 24px | 32px | 600 |
| H4 | 18px | 26px | 600 |
| Body | 16px | 24px | 400 |
| Small | 14px | 20px | 400 |
| Label | 12px | 16px | 500 |

### Style Rules

* **Sentence case headings** by default
* **Expressive headings (ALL CAPS):** Only for short labels (1–3 words), not full sentences. Use sparingly.
* **Links:** Underlined on hover only (default: accent-700 color, no underline)
* **Emphasis:** Use `--text` weight 600 for strong emphasis, avoid italics
* **Line length:** Max 65–75 characters for body text

### CSS Typography Variables

```css
:root {
  /* Font Families */
  --font-heading: 'Inter Tight', 'Inter', system-ui, -apple-system, sans-serif;
  --font-body: 'Inter', system-ui, -apple-system, sans-serif;

  /* Type Scale */
  --text-h1: 48px;
  --text-h2: 36px;
  --text-h3: 28px;
  --text-h4: 20px;
  --text-body: 16px;
  --text-small: 14px;
  --text-label: 12px;

  /* Line Heights */
  --leading-h1: 56px;
  --leading-h2: 44px;
  --leading-h3: 36px;
  --leading-h4: 28px;
  --leading-body: 24px;
  --leading-small: 20px;
  --leading-label: 16px;
}
```

---

## 4) Layout & Spacing

### Grid System

* **Max content width:** 1120px
* **Page padding:** 24px (mobile), 48px (desktop)
* **Section spacing:** 72–96px desktop, 48–64px mobile
* **Column gap:** 24px (desktop), 16px (mobile)

### Breakpoints

* **Mobile:** < 640px
* **Tablet:** 640px – 1024px
* **Desktop:** > 1024px

### Spacing Scale (8px System)

Use these tokens consistently:

* `4px` - Tight spacing (icon + text)
* `8px` - Small spacing
* `12px` - Default spacing
* `16px` - Medium spacing
* `24px` - Large spacing
* `32px` - Extra large spacing
* `48px` - Section spacing (mobile)
* `64px` - Section spacing (tablet)
* `72px` - Section spacing (desktop)
* `96px` - Major section spacing (desktop)

### CSS Spacing Variables

```css
:root {
  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-6: 24px;
  --space-8: 32px;
  --space-12: 48px;
  --space-16: 64px;
  --space-18: 72px;
  --space-24: 96px;
}
```

### Border Radius Tokens

* `--r-sm: 4px` - Small elements (badges, tags)
* `--r-md: 8px` - Buttons, inputs
* `--r-lg: 12px` - Cards (small)
* `--r-xl: 20px` - Cards (default)
* `--r-2xl: 28px` - Cards (large)
* `--r-full: 999px` - Pills, avatars

### Dividers

* **Section dividers:** 1px solid `--border`, full width
* **Card dividers:** 1px solid `--border`, within card
* **Subtle dividers:** Use `--bg-muted` background instead of border when appropriate

---

## 5) Components Spec

### Buttons

#### Primary Button

**Default State:**
* Background: `--text` (black) or `--accent-700` (blue)
* Text: white
* Border: none
* Radius: `--r-xl` (20px)
* Padding: 12px 24px
* Font: `--text-body`, weight 500

**Hover State:**
* Background: darken 5–10%
* Add subtle shadow: `0 2px 8px rgba(0, 0, 0, 0.1)`
* Transform: none (avoid movement)

**Active State:**
* Background: darken 10–15%
* Shadow: `0 1px 4px rgba(0, 0, 0, 0.1)`

**Focus State:**
* Outline: 2px solid `--accent-300`
* Outline-offset: 2px

**Disabled State:**
* Background: `--bg-muted`
* Text: `--text-muted`
* Cursor: not-allowed
* Opacity: 0.6

#### Secondary Button

**Default State:**
* Background: transparent
* Border: 1px solid `--border-strong`
* Text: `--text`
* Radius: `--r-xl` (20px)
* Padding: 12px 24px

**Hover State:**
* Background: `--bg-muted`
* Border: `--border-strong`

**Active/Focus:** Same as primary

#### Ghost Button

**Default State:**
* Background: transparent
* Border: none
* Text: `--text`
* Padding: 12px 24px

**Hover State:**
* Background: `--bg-muted`

**Active/Focus:** Same as primary

### Links

**Default State:**
* Color: `--accent-700`
* Text-decoration: none
* Font: inherit

**Hover State:**
* Text-decoration: underline
* Underline-offset: 2px

**Focus State:**
* Outline: 2px solid `--accent-300`
* Outline-offset: 2px

### Inputs

**Default State:**
* Height: 44px
* Padding: 12px 16px
* Border: 1px solid `--border-strong`
* Border-radius: `--r-md` (8px)
* Background: `--surface`
* Font: `--text-body`
* Color: `--text`

**Focus State:**
* Border: 1px solid `--accent-500`
* Outline: 2px solid `--accent-300`
* Outline-offset: 0

**Error State:**
* Border: 1px solid `--error-600`
* Background: `--error-100` (subtle tint)

**Disabled State:**
* Background: `--bg-muted`
* Border: `--border`
* Color: `--text-muted`
* Cursor: not-allowed

**Helper Text:**
* Font: `--text-small`
* Color: `--text-muted`
* Margin-top: 4px

### Cards

**Default State:**
* Background: `--surface`
* Border: 1px solid `--border`
* Border-radius: `--r-2xl` (28px)
* Padding: 24px
* Box-shadow: none (keep it flat)

**With Accent:**
* Optional: 2px top border using `--accent-100` or `--accent-300`

**Hover State (if interactive):**
* Border: `--border-strong`
* Subtle shadow: `0 4px 12px rgba(0, 0, 0, 0.04)`

### Badges

**Default State:**
* Background: `--accent-100`
* Color: `--accent-800`
* Font: `--text-label`
* Padding: 4px 12px
* Border-radius: `--r-full` (999px)
* Display: inline-block

**Variants:**
* Success: `--success-100` bg + `--success-600` text
* Error: `--error-100` bg + `--error-600` text
* Warning: `--warning-100` bg + `--warning-600` text
* Info: `--info-100` bg + `--info-600` text

### Alerts

**Default State:**
* Background: `--surface`
* Border-left: 3px solid (color based on type)
* Border-radius: `--r-md` (8px)
* Padding: 16px 20px
* Margin: 16px 0

**Types:**
* Success: `--success-600` border + `--success-100` subtle background tint
* Error: `--error-600` border + `--error-100` subtle background tint
* Warning: `--warning-600` border + `--warning-100` subtle background tint
* Info: `--info-600` border + `--info-100` subtle background tint

---

## 6) Writing Style Guide

### Voice & Tone

**Match the reference site style:**
* Short, direct sentences
* Avoid hype words and clichés
* Prefer active voice
* Concrete outcomes over vague promises

### Do's ✅

* "Route calls to the right team."
* "Set business hours and fallback rules."
* "See what happened on every call."
* "Start small. Upgrade when you need more."
* "Built for support and sales teams."

### Don'ts ❌

* "Revolutionize your communications."
* "Best-in-class AI synergy."
* "Transform your workflow with cutting-edge technology."
* "The ultimate solution for modern teams."
* "Unlock the power of..."

### UI Copy Patterns

**Buttons:**
* Primary CTA: `[Get started / Book a demo]` (use your specified primary CTA)
* Secondary: "View pricing", "Learn more", "Contact us"
* Keep to 1–3 words when possible

**Form Labels:**
* Short nouns: "Name", "Work email", "Company", "Message"
* Avoid: "Please enter your", "Your company name"

**Errors:**
* "That email looks wrong."
* "Try again."
* "This field is required."

**Success Messages:**
* "Message sent."
* "We'll reply within 1–2 business days."

---

## 7) Website IA + Wireframes

### Navigation Structure

**Desktop:**
* Left: **[COMPANY NAME]** (wordmark, links to home)
* Center: Product · Pricing · Contact
* Right: **[Get started / Book a demo]** (primary CTA button)

**Mobile:**
* Hamburger menu with same links
* Primary CTA remains visible

---

### Home Page

#### Section 1: Hero
**Heading:** [COMPANY NAME] helps [WHAT WE DO IN 1 SENTENCE]
**Subheading:** [One sentence that expands on the value proposition]
**CTAs:** 
* Primary: **[Get started / Book a demo]**
* Secondary: "View product"

**Visual Notes:** Minimal illustration or product screenshot (optional), lots of whitespace

---

#### Section 2: Proof Strip
**Content:** "Built for [TARGET AUDIENCE]." (or customer logos if available)

**Visual Notes:** Simple text or logo grid, neutral background

---

#### Section 3: Key Benefits (3–5 Cards)
**Card 1:**
* Heading: [KEY BENEFIT 1]
* Body: [One sentence explaining the benefit]

**Card 2:**
* Heading: [KEY BENEFIT 2]
* Body: [One sentence explaining the benefit]

**Card 3:**
* Heading: [KEY BENEFIT 3]
* Body: [One sentence explaining the benefit]

**Card 4:** (if applicable)
* Heading: [KEY BENEFIT 4]
* Body: [One sentence explaining the benefit]

**Card 5:** (if applicable)
* Heading: [KEY BENEFIT 5]
* Body: [One sentence explaining the benefit]

**Visual Notes:** Minimal icons (outline style), one accent color per card if needed

---

#### Section 4: How It Works (3 Steps)
**Step 1:**
* Heading: [Step 1 Name]
* Body: [One sentence description]

**Step 2:**
* Heading: [Step 2 Name]
* Body: [One sentence description]

**Step 3:**
* Heading: [Step 3 Name]
* Body: [One sentence description]

**Visual Notes:** Numbered steps, minimal icons, clean layout

---

#### Section 5: Final CTA
**Heading:** Start today.
**Subheading:** Set up in minutes.
**CTA:** **[Get started / Book a demo]**

**Visual Notes:** Centered, lots of whitespace, subtle background tint optional

---

### Product Page

#### Section 1: Hero
**Heading:** Everything you need to [CORE FUNCTION].
**Subheading:** [Key features]—without busywork.

**Visual Notes:** Minimal, clean

---

#### Section 2: [Feature 1]
**Heading:** [Feature Name]
**Body:** [2–3 sentences explaining the feature and its value]
**Visual:** Optional screenshot or diagram (minimal style)

---

#### Section 3: [Feature 2]
**Heading:** [Feature Name]
**Body:** [2–3 sentences explaining the feature and its value]
**Visual:** Optional screenshot or diagram (minimal style)

---

#### Section 4: [Feature 3]
**Heading:** [Feature Name]
**Body:** [2–3 sentences explaining the feature and its value]
**Visual:** Optional screenshot or diagram (minimal style)

---

#### Section 5: Integrations (if applicable)
**Heading:** Works with your stack
**Body:** Integrate with [list integrations] in minutes.
**Visual:** Logo grid (minimal, grayscale with hover color)

---

#### Section 6: CTA
**Heading:** Ready to get started?
**CTA:** **[Get started / Book a demo]**

---

### Pricing Page

#### Section 1: Hero
**Heading:** Simple pricing.
**Subheading:** Start small. Upgrade when you need more.

**Visual Notes:** Clean, centered

---

#### Section 2: Pricing Tiers

**[If pricing tiers are known, use this structure:]**

**Tier 1: [Tier Name]**
* Price: $X/month
* Features:
  * Feature 1
  * Feature 2
  * Feature 3
* CTA: "Get started"

**Tier 2: [Tier Name]** (Highlighted/Recommended)
* Badge: "Most popular"
* Price: $X/month
* Features:
  * Feature 1
  * Feature 2
  * Feature 3
  * Feature 4
* CTA: "Get started"

**Tier 3: [Tier Name]**
* Price: $X/month
* Features:
  * Feature 1
  * Feature 2
  * Feature 3
  * Feature 4
  * Feature 5
* CTA: "Get started"

**[If pricing is TBD, use this:]**

**Coming Soon**
**Subheading:** We're finalizing our pricing. Contact us to discuss your needs.
**CTA:** "Contact us"

---

#### Section 3: FAQ
**Q:** How does billing work?
**A:** [Answer]

**Q:** Can I cancel anytime?
**A:** [Answer]

**Q:** What happens if I exceed my plan limits?
**A:** [Answer]

**Visual Notes:** Accordion or simple list, minimal styling

---

### Contact Page

#### Section 1: Header
**Heading:** Contact [COMPANY NAME]
**Subheading:** Tell us what you're building. We'll reply within 1–2 business days.

**Visual Notes:** Centered, clean

---

#### Section 2: Contact Form
**Fields:**
* Name (required)
* Work email (required)
* Company (optional)
* Message (required, textarea)

**Button:** "Send"

**Visual Notes:** Clean form, proper spacing, error states

---

#### Section 3: Alternative Contact (Optional)
**Heading:** Or reach us directly
**Content:** 
* Email: [email]
* (Other contact methods if applicable)

---

## 8) Visual Style Rules

### General Principles

* **Mostly monochrome UI** - Black, white, and grays as the base
* **One accent per section max** - Don't rainbow the page
* **Rounded corners** - 20–28px on cards, 8px on buttons/inputs
* **Minimal icons** - Outline style, consistent stroke width
* **No heavy gradients** - If used, keep them subtle (accent-50 → white)
* **Lots of whitespace** - Don't cram content
* **Thin dividers** - 1px borders, neutral colors
* **Tight layouts** - Content should feel intentional, not stretched

### Image Guidelines

* **Product screenshots:** Clean, minimal UI, neutral backgrounds
* **Illustrations:** Simple line art, minimal color
* **Icons:** Outline style, 24px default size, consistent stroke width
* **Logos:** Grayscale with optional hover color

### Animation Guidelines

* **Subtle transitions:** 150–200ms for hover states
* **No bouncy animations** - Keep it calm and professional
* **Focus states:** Clear but not distracting

---

## 9) Final Output Summary

### Design Doc Summary

This design system provides a complete foundation for building a minimal, modern website that matches the aesthetic of the reference site. Key characteristics:

* **Color:** Black/white neutrals with expressive blue accent (used sparingly)
* **Typography:** Inter/Inter Tight for clean, modern feel
* **Layout:** 1120px max width, generous whitespace, 8px spacing system
* **Components:** Minimal, functional, accessible
* **Voice:** Direct, concrete, no hype

### Ready-to-Use Website Text

**[Note: Replace all placeholders with your actual company information]**

**Navigation:**
* Logo: [COMPANY NAME]
* Links: Product · Pricing · Contact
* CTA: [Get started / Book a demo]

**Home Page:**
* Hero H1: [COMPANY NAME] helps [WHAT WE DO IN 1 SENTENCE]
* Hero Sub: [One sentence value proposition]
* Proof: "Built for [TARGET AUDIENCE]."
* Benefit 1: [KEY BENEFIT 1] - [Description]
* Benefit 2: [KEY BENEFIT 2] - [Description]
* Benefit 3: [KEY BENEFIT 3] - [Description]
* Final CTA: "Start today." / "Set up in minutes."

**Product Page:**
* Hero: "Everything you need to [CORE FUNCTION]."
* Features: [List your key features with descriptions]

**Pricing Page:**
* Hero: "Simple pricing." / "Start small. Upgrade when you need more."
* Tiers: [Your pricing tiers or "Contact us" if TBD]

**Contact Page:**
* Heading: "Contact [COMPANY NAME]"
* Sub: "Tell us what you're building. We'll reply within 1–2 business days."

### Sitemap

```
/
├── / (Home)
├── /product
├── /pricing
└── /contact
```

### Navigation Structure

**Desktop:**
```
[COMPANY NAME] | Product · Pricing · Contact | [Get started / Book a demo]
```

**Mobile:**
```
[☰] [COMPANY NAME]                    [Get started / Book a demo]
```

---

## Implementation Notes

1. **Start with CSS variables** - Drop in the color and spacing tokens first
2. **Build components** - Create reusable button, input, card components
3. **Mobile-first** - Design for mobile, then enhance for desktop
4. **Test accessibility** - Ensure contrast ratios meet WCAG AA
5. **Iterate on copy** - Use the writing guide to refine all text

---

**Next Steps:**
1. Replace all `[PLACEHOLDER]` text with your actual company information
2. Customize accent colors if blue doesn't fit your brand
3. Add your specific features and benefits
4. Implement the design system in your chosen framework

