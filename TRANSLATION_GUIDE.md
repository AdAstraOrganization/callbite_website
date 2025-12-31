# Translation Guide - Dutch & English

Your website now supports both **Dutch (NL)** and **English (EN)** languages with automatic language switching and persistence.

## How It Works

1. **Language Switcher**: Located in the top navigation (EN/NL buttons)
2. **Automatic Persistence**: User's language choice is saved in browser localStorage
3. **All Pages**: Translation works across Home, Product, Pricing, and Contact pages

## Adding Translations

### 1. Edit `translations.js`

All translations are stored in the `translations.js` file. The structure is:

```javascript
const translations = {
  en: {
    nav: { ... },
    home: { ... },
    product: { ... },
    pricing: { ... },
    contact: { ... },
    common: { ... }
  },
  nl: {
    // Same structure, Dutch translations
  }
};
```

### 2. Add Translation Keys to HTML

Use the `data-i18n` attribute on any element you want to translate:

```html
<h1 data-i18n="home.heroTitle">Default English Text</h1>
<p data-i18n="home.heroSubtitle">This will be replaced with translation</p>
```

### 3. Translation Key Structure

Keys use dot notation to access nested objects:
- `nav.product` → `translations[lang].nav.product`
- `home.heroTitle` → `translations[lang].home.heroTitle`
- `contact.nameLabel` → `translations[lang].contact.nameLabel`

## Adding New Translations

### Example: Adding a new section

1. **Add to translations.js:**
```javascript
en: {
  // ... existing translations
  newSection: {
    title: "New Section Title",
    description: "Description text"
  }
},
nl: {
  // ... existing translations
  newSection: {
    title: "Nieuwe Sectie Titel",
    description: "Beschrijving tekst"
  }
}
```

2. **Add to HTML:**
```html
<h2 data-i18n="newSection.title">New Section Title</h2>
<p data-i18n="newSection.description">Description text</p>
```

## Current Translation Keys

### Navigation (`nav.*`)
- `nav.product` - "Product" / "Product"
- `nav.pricing` - "Pricing" / "Prijzen"
- `nav.contact` - "Contact" / "Contact"
- `nav.cta` - Primary CTA button text

### Home Page (`home.*`)
- `home.heroTitle` - Main hero heading
- `home.heroSubtitle` - Hero subheading
- `home.heroCTA` - Primary CTA button
- `home.heroSecondary` - Secondary CTA button
- `home.proof` - Proof strip text
- `home.benefit1Title` through `home.benefit5Title` - Benefit card titles
- `home.benefit1Desc` through `home.benefit5Desc` - Benefit card descriptions
- `home.howItWorks` - "How it works" heading
- `home.step1Title` through `home.step3Title` - Step titles
- `home.step1Desc` through `home.step3Desc` - Step descriptions
- `home.finalCTATitle` - Final CTA heading
- `home.finalCTASubtitle` - Final CTA subheading
- `home.finalCTAButton` - Final CTA button

### Product Page (`product.*`)
- `product.heroTitle` - Hero heading
- `product.heroSubtitle` - Hero subheading
- `product.feature1Title` through `product.feature3Title` - Feature titles
- `product.feature1Desc` through `product.feature3Desc` - Feature descriptions
- `product.integrationsTitle` - Integrations heading
- `product.integrationsSubtitle` - Integrations subheading
- `product.ctaTitle` - CTA section heading
- `product.ctaButton` - CTA button

### Pricing Page (`pricing.*`)
- `pricing.heroTitle` - Hero heading
- `pricing.heroSubtitle` - Hero subheading
- `pricing.tier1Name` through `pricing.tier3Name` - Tier names
- `pricing.mostPopular` - "Most popular" badge
- `pricing.perMonth` - "per month" text
- `pricing.getStarted` - "Get started" button
- `pricing.comingSoon` - "Coming Soon" heading
- `pricing.comingSoonDesc` - Coming soon description
- `pricing.contactUs` - "Contact us" button
- `pricing.faqTitle` - FAQ heading
- `pricing.faq1Q` through `pricing.faq3Q` - FAQ questions
- `pricing.faq1A` through `pricing.faq3A` - FAQ answers

### Contact Page (`contact.*`)
- `contact.heroTitle` - Page heading
- `contact.heroSubtitle` - Page subheading
- `contact.nameLabel` - Name field label
- `contact.emailLabel` - Email field label
- `contact.companyLabel` - Company field label
- `contact.companyOptional` - "(optional)" text
- `contact.messageLabel` - Message field label
- `contact.sendButton` - Send button
- `contact.alternativeTitle` - Alternative contact heading
- `contact.email` - Email address text

### Common (`common.*`)
- `common.footer` - Footer copyright text
- `common.placeholder` - Placeholder text for images

## Customizing Translations

1. **Open `translations.js`**
2. **Find the key you want to change** (e.g., `home.heroTitle`)
3. **Update both English and Dutch versions**
4. **Save the file** - changes apply immediately when you refresh

## Language Detection

The system:
- Defaults to English (`en`)
- Remembers user's choice in localStorage
- Updates the `lang` attribute on `<html>` for SEO

## Styling the Language Switcher

The language switcher uses the design system styles. You can customize it in `design-system.css` under the `.lang-switcher` section.

## Tips

- **Keep keys consistent**: Use the same key structure across pages when possible
- **Test both languages**: Always check that both EN and NL work correctly
- **Update placeholders**: Remember to replace `[COMPANY NAME]` and other placeholders in both languages
- **SEO**: The `lang` attribute on `<html>` is automatically updated for search engines

## Need Help?

If you need to add a new language (e.g., German, French), simply:
1. Add a new object in `translations.js` (e.g., `de: { ... }`)
2. Add a button in the language switcher HTML
3. Update the `setLanguage()` function if needed

