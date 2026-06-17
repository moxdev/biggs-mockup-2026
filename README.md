# biggs-mockup-2026

# Playwright Testing

## Screenshot Section for Testing

- replace the ID with the section ID you are testing "home-awards" to "home-hero" etc.

```Bash
SECTION=home-awards npm run screenshots:section
```

### Screenshot Entire Home Page

```Bash
npm run screenshots
```

### Delete Old Screenshot

### Terminal alias

- alias='screenshots' will run the below command to remove old screenshots from testing folder

```Bash
rm testing/screenshots/*.png
```

# Home Page IDs

| Section                    | Section ID                  |
| -------------------------- | --------------------------- |
| Hero                       | `home-hero`                 |
| Homeowner Highlights       | `home-homeowner-highlights` |
| Trust Points Strip         | `home-trust-points`         |
| SEO Intro                  | `home-intro`                |
| Awards                     | `home-awards`               |
| Service Highlights         | `home-service-highlights`   |
| Why Choose Biggs           | `home-why-biggs`            |
| Service Area               | `home-service-area`         |
| Reviews                    | `home-reviews`              |
| Priority Service Agreement | `home-psa`                  |
| Future Placeholder         | `next-section`              |

# Zip dev files for gpt upload

- builds the tailwind css first and then zips all files

```Bash
npm run zip:gpt:build
```

# Orignal Biggs Brand Colors

```css
/* Original Biggs Brand Colors Do Not Use */
--color-biggs-yellow: #facb06;
--color-biggs-red: #e00a17;
--color-biggs-blue: #234f91;
--color-biggs-green: #2e7d32;
```
