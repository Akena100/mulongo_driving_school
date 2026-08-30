Yes. Here is the **complete README in one piece**, with the **orange + blue + white + red** Mulongo Driving School branding built into the entire specification. You can use this directly as the master prompt/specification for building the Flutter website.

# 🚗 Mulongo Driving School — Official Website

A modern, premium, responsive and conversion-focused website for **Mulongo Driving School**, a professional driving school in Uganda.

The website will be built using **Flutter Web** and should present Mulongo Driving School as a trustworthy, professional, modern and student-focused driving school.

The website should not look like a basic Flutter demo or generic template. It should look like a professionally designed commercial website created specifically for a Ugandan driving school.

The website's primary objective is to convert visitors into students by making it extremely easy to:

* Learn about Mulongo Driving School
* View driving courses
* Understand the training process
* Learn about the school's instructors and vehicles
* See photos and testimonials
* Contact the school
* Call the school
* WhatsApp the school
* Find the school's location
* Request driving lessons
* Eventually register or book lessons online

---

# 🇺🇬 1. Business Information

## Business Name

**Mulongo Driving School**

## Country

**Uganda**

## Industry

**Driving School / Driver Training**

## Website Type

**Professional business website**

## Primary Audience

People in Uganda who want to:

* Learn how to drive
* Learn manual driving
* Learn automatic driving
* Improve their driving skills
* Take beginner driving lessons
* Take refresher driving lessons
* Prepare for driving licence training
* Become confident drivers
* Learn safe and responsible driving

---

# 🎯 2. Website Goals

The website should have two major goals:

## Goal 1 — Build Trust

Visitors should immediately feel that Mulongo Driving School is:

* Professional
* Reliable
* Experienced
* Safe
* Friendly
* Modern
* Student-focused

## Goal 2 — Generate Students

The website should encourage visitors to:

* Call
* WhatsApp
* Send an inquiry
* Request driving lessons
* Register
* Book training

The website should therefore be **conversion-focused**, not just informational.

---

# 🧱 3. Technology Stack

## Frontend

* Flutter
* Dart
* Flutter Web

## Design

* Material 3
* Custom responsive components
* Custom brand theme
* Google Fonts
* Font Awesome icons
* Smooth animations

## Recommended Packages

```yaml
dependencies:
  flutter:
    sdk: flutter

  go_router: ^latest
  google_fonts: ^latest
  font_awesome_flutter: ^latest
  flutter_animate: ^latest
  url_launcher: ^latest
  url_strategy: ^latest
```

Use the latest stable versions compatible with the Flutter SDK being used.

Do not add unnecessary dependencies.

Every package should have a clear purpose.

---

# 🧭 4. Routing

Use:

### `go_router`

The website should use clean, scalable routing.

Recommended routes:

```text
/
 /about
 /courses
 /courses/manual-driving
 /courses/automatic-driving
 /courses/refresher-driving
 /instructors
 /vehicles
 /gallery
 /testimonials
 /faq
 /contact
```

Routing should support:

* Browser navigation
* Back/forward buttons
* Deep links
* Clean URLs
* 404 handling
* Future expansion

---

# 🔗 5. Clean URLs

Use:

### `url_strategy`

The website must not use Flutter's default hash URLs.

Avoid:

```text
mulongodrivingschool.com/#/courses
```

Use:

```text
mulongodrivingschool.com/courses
```

Clean URLs are important for:

* SEO
* Google indexing
* Professional appearance
* Sharing links
* User experience

---

# 🎨 6. Brand Identity

The Mulongo Driving School website should be strongly based on four colors:

### 🟧 Orange — Primary Brand Color

Orange is the dominant brand color.

```text
#F97316
```

Dark orange:

```text
#EA580C
```

Use orange for:

* Primary CTAs
* Important buttons
* Highlights
* Navigation active states
* Icons
* Accent lines
* Course highlights
* Hero elements
* Hover states
* Important visual elements

Orange should be the color visitors associate most strongly with Mulongo Driving School.

---

### 🔵 Blue — Secondary Brand Color

Blue represents:

* Trust
* Professionalism
* Education
* Safety
* Reliability

Primary blue:

```text
#1565C0
```

Dark blue:

```text
#0D47A1
```

Light blue:

```text
#E3F2FD
```

Use blue for:

* Navigation
* Secondary buttons
* Section backgrounds
* Headings
* Information cards
* Footer
* Trust sections
* Educational content

---

### ⚪ White — Main Background

```text
#FFFFFF
```

White should provide the clean space between the stronger brand colors.

Use it for:

* Main backgrounds
* Cards
* Forms
* Navigation
* Content sections

---

### 🔴 Red — Accent Only

Red should be used sparingly.

Primary red:

```text
#E53935
```

Dark red:

```text
#C62828
```

Use red for:

* Important notices
* Alerts
* Small promotional accents
* Error states
* Urgent information

Red must NOT become a dominant color.

---

# 🎨 7. Neutral Colors

Primary text:

```text
#172033
```

Secondary text:

```text
#5B6472
```

Muted text:

```text
#8A94A6
```

Light background:

```text
#F7F9FC
```

Border:

```text
#E5E7EB
```

---

# 🧩 8. Flutter Color System

Create:

```text
lib/core/theme/app_colors.dart
```

Example:

```dart
class AppColors {
  static const orange = Color(0xFFF97316);
  static const orangeDark = Color(0xFFEA580C);

  static const blue = Color(0xFF1565C0);
  static const blueDark = Color(0xFF0D47A1);
  static const blueLight = Color(0xFFE3F2FD);

  static const white = Color(0xFFFFFFFF);

  static const background = Color(0xFFF7F9FC);

  static const red = Color(0xFFE53935);
  static const redDark = Color(0xFFC62828);

  static const textPrimary = Color(0xFF172033);
  static const textSecondary = Color(0xFF5B6472);
  static const textMuted = Color(0xFF8A94A6);

  static const border = Color(0xFFE5E7EB);
}
```

Never scatter random colors throughout the application.

All components should use the centralized theme.

---

# ✍️ 9. Typography

Use:

### `google_fonts`

Recommended primary font:

**Poppins**

Alternative:

**Montserrat**

Typography should be modern and highly readable.

Use:

```text
ExtraBold / Bold
```

for major headings.

```text
SemiBold
```

for buttons and important labels.

```text
Regular
```

for body content.

Suggested hierarchy:

```text
Hero Heading
48–72px desktop
36–44px tablet
32–38px mobile

Section Heading
36–48px desktop
28–36px mobile

Body
16–18px

Small text
13–15px
```

Font sizes must be responsive.

---

# 🔤 10. Icons

Use:

### `font_awesome_flutter`

Icons should be used for:

* Phone
* WhatsApp
* Car
* Steering wheel
* Licence
* Instructor
* Location
* Clock
* Calendar
* Safety
* Education
* Facebook
* Instagram
* TikTok
* YouTube
* Email

Use icons consistently.

Do not mix too many different icon styles.

---

# ✨ 11. Animations

Use:

### `flutter_animate`

Animations should make the website feel polished without becoming distracting.

Use:

* Fade-in
* Slide-up
* Scale-in
* Hover effects
* Button transitions
* Card animations
* Image transitions

Animations should be:

* Smooth
* Short
* Professional
* Subtle

Avoid excessive animations.

---

# 📱 12. Responsive Design

The website must be completely responsive.

Target:

* Mobile
* Tablet
* Laptop
* Desktop
* Large desktop

Recommended breakpoints:

```text
Mobile:
< 600px

Tablet:
600px – 1024px

Desktop:
1024px – 1440px

Large Desktop:
> 1440px
```

Do not simply shrink the desktop design.

Layouts should adapt intelligently.

---

# 🧱 13. Project Architecture

Use a clean and scalable structure:

```text
lib/
│
├── main.dart
├── app.dart
│
├── core/
│   ├── constants/
│   │   └── app_constants.dart
│   │
│   ├── routing/
│   │   └── app_router.dart
│   │
│   ├── theme/
│   │   ├── app_colors.dart
│   │   ├── app_theme.dart
│   │   └── app_text_styles.dart
│   │
│   ├── responsive/
│   │   └── responsive.dart
│   │
│   └── utils/
│       ├── url_launcher_service.dart
│       └── validators.dart
│
├── models/
│   ├── course.dart
│   ├── instructor.dart
│   ├── vehicle.dart
│   └── testimonial.dart
│
├── services/
│
├── widgets/
│   ├── common/
│   ├── navigation/
│   ├── buttons/
│   ├── cards/
│   └── sections/
│
└── pages/
    ├── home/
    ├── about/
    ├── courses/
    ├── instructors/
    ├── vehicles/
    ├── gallery/
    ├── testimonials/
    ├── faq/
    └── contact/
```

The application should be modular.

Avoid putting the entire website inside one enormous Dart file.

---

# 🧭 14. Navigation Bar

Desktop navigation:

```text
LOGO

Home
About
Courses
Instructors
Gallery
FAQ
Contact

[ Book Driving Lessons ]
```

The primary CTA should be orange.

Navigation should be:

* Clean
* Sticky or intelligently positioned
* Responsive
* Easy to understand

Active page indicators should use orange.

---

# 📱 15. Mobile Navigation

On mobile:

```text
LOGO                         ☰
```

Opening the menu should display:

```text
Home
About
Courses
Instructors
Gallery
Testimonials
FAQ
Contact

[ Book Driving Lessons ]
```

The mobile navigation should be easy to close.

---

# 🏠 16. Homepage

The homepage should be the strongest page on the website.

Recommended order:

```text
Navigation
↓
Hero
↓
Trust Indicators
↓
About
↓
Courses
↓
Why Choose Us
↓
Training Process
↓
Vehicles
↓
Instructors
↓
Testimonials
↓
Gallery
↓
FAQ
↓
Contact
↓
Final CTA
↓
Footer
```

---

# 🚘 17. Hero Section

The hero is the first major visual experience.

Use a high-quality image of:

* A learner driver
* Driving instructor
* Training vehicle
* Driving lesson

Possible headline:

## Learn to Drive with Confidence

Supporting text:

> Professional driving lessons designed to help you become a confident, responsible and skilled driver.

Primary CTA:

```text
[ Book Driving Lessons ]
```

Secondary CTA:

```text
[ Call Us ]
```

Additional CTA:

```text
[ WhatsApp Us ]
```

---

# 🎨 Hero Visual Style

The hero should use:

* Professional driving image
* Dark blue overlay where necessary
* White text
* Orange CTA
* Small orange decorative elements

Example visual hierarchy:

```text
LEARN TO DRIVE
WITH CONFIDENCE

Professional driving lessons in Uganda.

[ BOOK DRIVING LESSONS ] [ CALL US ]
```

The heading should be bold and highly visible.

---

# 🏆 18. Trust Indicators

Immediately below the hero, display four quick benefits.

Example:

```text
🚘 Professional Training

👨‍🏫 Skilled Instructors

🛡 Safety First

⭐ Student-Focused Learning
```

Each should have:

* Icon
* Heading
* Short explanation

Use orange icons with blue or dark text.

---

# ℹ️ 19. About Section

Heading:

## Your Journey to Confident Driving Starts Here

Introduce Mulongo Driving School.

Explain:

* Who the school is
* What it offers
* Training philosophy
* Commitment to safety
* Practical training
* Student support
* Driving confidence

Use a split layout:

```text
Image                    Text
-------------------------------
Driving lesson           About us
                       Description
                       [ Learn More ]
```

On mobile, stack the image and text.

---

# 🚗 20. Courses Section

Display available driving courses as attractive cards.

Potential courses:

### Beginner Driving

For people who are learning to drive for the first time.

### Manual Driving

Learn how to confidently operate a manual transmission vehicle.

### Automatic Driving

Learn to safely and confidently drive automatic vehicles.

### Refresher Driving

Improve confidence, control and practical driving skills.

Only display courses that Mulongo Driving School actually provides.

---

# 🃏 21. Course Cards

Each course card should include:

* Image or icon
* Course name
* Description
* Key benefits
* CTA

Example:

```text
┌─────────────────────────┐
│       COURSE IMAGE       │
│                         │
│ Manual Driving          │
│                         │
│ Learn practical manual  │
│ driving skills...       │
│                         │
│ [ Learn More → ]        │
└─────────────────────────┘
```

Cards should have:

* Rounded corners
* Subtle shadow
* Clean spacing
* Orange highlights
* Blue headings

---

# 📄 22. Course Detail Pages

Every major course can have its own route.

Example:

```text
/courses/manual-driving
/courses/automatic-driving
```

Each page should contain:

* Course title
* Introduction
* Who the course is for
* What students will learn
* Training objectives
* Practical training
* Safety information
* Requirements
* Duration
* Registration CTA

Final CTA:

## Ready to Start Learning?

```text
[ Book Driving Lessons ]
[ WhatsApp Us ]
```

---

# ⭐ 23. Why Choose Mulongo Driving School

Create a strong visual section.

Possible features:

### Professional Instruction

Learn with clear guidance from experienced instructors.

### Practical Training

Develop real-world driving skills.

### Safety First

Learn responsible and safe driving habits.

### Student-Focused

Training is centered around the learner's progress.

### Confidence Building

Develop confidence behind the wheel.

### Professional Environment

A structured and supportive learning environment.

Use orange icons and blue headings.

---

# 🛣️ 24. Training Process

Create a visual step-by-step process.

```text
01
Contact Us

↓

02
Choose Your Course

↓

03
Start Training

↓

04
Practice & Improve

↓

05
Become a Confident Driver
```

Use:

* Orange numbered circles
* Blue connecting lines
* White cards/background

The process should make registration feel simple.

---

# 🚘 25. Training Vehicles

Create a vehicle section.

Display real vehicles used by the school.

Each card can include:

```text
Vehicle Name
Transmission
Training Type
```

Example:

```text
Training Vehicle

Manual Transmission

Suitable for practical driving lessons.
```

Do not invent vehicle details.

Use real photographs where possible.

---

# 👨‍🏫 26. Instructors

Create an instructor section.

Each instructor card can include:

* Photo
* Name
* Position
* Experience
* Short biography

Example:

```text
Instructor Name

Professional Driving Instructor

Helping learners develop confidence,
control and safe driving habits.
```

Only use real instructor information.

Never invent qualifications or experience.

---

# 🖼️ 27. Gallery

Create a professional image gallery.

Categories:

```text
All
Training
Vehicles
Students
School
Driving Lessons
```

Use:

* Responsive grid
* High-quality images
* Rounded corners
* Hover effects
* Full-size image preview

Desktop:

```text
3–4 columns
```

Tablet:

```text
2–3 columns
```

Mobile:

```text
2 columns
```

---

# 💬 28. Testimonials

Create a testimonials section.

Example:

```text
★★★★★

"Mulongo Driving School helped me
become more confident behind the wheel."

Student Name
Former Student
```

Use only genuine testimonials.

Do not create fake reviews.

Use cards with:

* White background
* Blue accents
* Orange stars
* Clean typography

---

# 📊 29. Statistics

If real statistics are available, display them.

Examples:

```text
500+
Students Trained

10+
Years Experience

95%
Student Satisfaction
```

Only use statistics that can be verified.

Do not invent numbers.

---

# ❓ 30. FAQ

Create an expandable FAQ section.

Possible questions:

### How do I register for driving lessons?

Explain the actual registration process.

### Do you teach beginners?

Explain beginner training.

### Do you offer manual driving lessons?

Explain actual availability.

### Do you offer automatic driving lessons?

Explain actual availability.

### How long does training take?

Display the actual training duration.

### Where is Mulongo Driving School located?

Display the official location.

### How can I contact Mulongo Driving School?

Display phone, WhatsApp and other contact methods.

FAQ cards should use clean expandable animations.

---

# 📞 31. Contact Section

Contact should be one of the strongest conversion areas.

Display:

### Phone

Clickable phone number.

### WhatsApp

Clickable WhatsApp button.

### Location

Official school location.

### Email

Official email address if available.

### Opening Hours

Actual opening hours.

---

# 📝 32. Contact Form

Create a simple inquiry form.

Fields:

```text
Full Name
Phone Number
Email Address
Preferred Course
Message
```

CTA:

```text
Send Inquiry
```

The form should be:

* Simple
* Mobile friendly
* Clearly validated
* Easy to complete

Do not ask for unnecessary information.

---

# 💬 33. WhatsApp Integration

WhatsApp should be one of the main conversion channels.

Create a floating WhatsApp button.

Example pre-filled message:

```text
Hello Mulongo Driving School, I would like to enquire about driving lessons.
```

For course-specific buttons:

```text
Hello Mulongo Driving School, I am interested in your manual driving course.
```

Use:

### `url_launcher`

Store the WhatsApp number in centralized configuration.

---

# 📱 34. Click-to-Call

Phone numbers must use:

```text
tel:
```

on supported devices.

Example:

```text
📞 Call Us
```

Mobile users should be able to call with one tap.

---

# 📍 35. Google Maps

The contact section should provide the school's official location.

Include:

* Map
* Address
* Directions button

CTA:

```text
Get Directions
```

Use the official location once supplied.

---

# 🌐 36. Social Media

Display official social accounts where available.

Possible:

* Facebook
* Instagram
* TikTok
* YouTube

Use Font Awesome icons.

Do not show platforms where Mulongo Driving School has no official account.

---

# 🦶 37. Footer

The footer should use **dark blue** as the primary background.

Example:

```text
------------------------------------------------------
Mulongo Driving School

Professional driving lessons designed to
help you become a confident driver.

Quick Links

Home
About
Courses
Gallery
FAQ
Contact

Contact

Phone
WhatsApp
Email
Location

Follow Us

Facebook
Instagram
TikTok
YouTube

© 2026 Mulongo Driving School.
All Rights Reserved.
------------------------------------------------------
```

Use orange highlights and white text.

---

# 🎯 38. Calls to Action

Primary CTA:

```text
Book Driving Lessons
```

Secondary:

```text
Contact Us
```

Additional:

```text
Call Us
WhatsApp Us
Learn More
View Courses
Get Directions
Send Inquiry
Start Learning
```

Primary CTA buttons should normally be orange.

Secondary buttons should normally be blue or outlined orange.

---

# 📱 39. Sticky Mobile CTA

On mobile, consider a fixed bottom action bar:

```text
┌──────────────────────────────┐
│  📞 Call       💬 WhatsApp   │
└──────────────────────────────┘
```

This keeps the two most important conversion actions accessible.

Make sure it does not cover website content.

---

# 🧠 40. User Experience

The visitor journey should be:

```text
Visitor
   ↓
Hero
   ↓
Understand Mulongo Driving School
   ↓
View Courses
   ↓
Understand Benefits
   ↓
See Training Process
   ↓
See Trust Signals
   ↓
Contact School
   ↓
Book / Register
```

Every important page should contain a clear next action.

---

# 📈 41. SEO

SEO should be treated as a major part of the project.

Potential search terms:

```text
Driving school Uganda
Driving schools Uganda
Driving lessons Uganda
Driving school Kampala
Driving lessons Kampala
Learn to drive Uganda
Manual driving lessons Uganda
Automatic driving lessons Uganda
Driving licence training Uganda
Best driving school Uganda
```

Use keywords naturally.

Do not keyword-stuff.

---

# 🏷️ 42. Page Titles

Homepage:

```text
Mulongo Driving School | Professional Driving Lessons in Uganda
```

About:

```text
About Mulongo Driving School | Uganda
```

Courses:

```text
Driving Courses | Mulongo Driving School
```

Manual:

```text
Manual Driving Lessons | Mulongo Driving School
```

Automatic:

```text
Automatic Driving Lessons | Mulongo Driving School
```

Contact:

```text
Contact Mulongo Driving School | Uganda
```

---

# 📝 43. Meta Description

Homepage example:

```text
Learn to drive with confidence at Mulongo Driving School.
Discover professional driving lessons, practical training and
driver education in Uganda.
```

Each major page should have its own relevant metadata.

---

# 🔎 44. SEO Structure

Use:

```text
H1
H2
H3
paragraphs
lists
links
```

Every page should have one primary H1.

Headings should describe actual page content.

---

# 📍 45. Local SEO

The website should clearly communicate:

```text
Mulongo Driving School
Uganda
Official Location
Phone
Services
Opening Hours
```

The website's business information should match the school's official Google Business Profile.

This consistency is important for local search.

---

# ⚡ 46. Performance

The website must be fast.

Requirements:

* Compress images
* Prefer WebP
* Lazy-load large images
* Avoid unnecessary dependencies
* Use `const` widgets where possible
* Minimize unnecessary rebuilds
* Avoid excessive animations
* Optimize large assets
* Keep page structures efficient

The website should work well on slower mobile internet connections.

---

# 🖼️ 47. Image Optimization

Use optimized images.

Preferred:

```text
WebP
```

Example:

```text
hero.webp
about.webp
training.webp
vehicle-01.webp
vehicle-02.webp
instructor-01.webp
gallery-01.webp
gallery-02.webp
```

Avoid using huge uncompressed camera images.

---

# ♿ 48. Accessibility

The website should provide a good accessible experience.

Use:

* Strong color contrast
* Readable text
* Clear labels
* Large enough touch targets
* Keyboard navigation where possible
* Meaningful image descriptions
* Clear links
* Proper semantic structure

Do not rely solely on color to communicate information.

---

# 🔗 49. URL Launcher Service

Create a reusable service around:

### `url_launcher`

It should support:

```text
Phone
WhatsApp
Email
Google Maps
Facebook
Instagram
TikTok
YouTube
```

Centralize this functionality rather than implementing URL launching repeatedly in every widget.

---

# 🧰 50. Reusable Widgets

Create reusable components:

```text
AppNavbar
MobileNavbar
Footer
HeroSection
SectionTitle
PrimaryButton
SecondaryButton
CourseCard
InstructorCard
VehicleCard
TestimonialCard
FeatureCard
FAQItem
ContactCard
SocialLinks
WhatsAppButton
CallButton
GalleryGrid
StatsCard
```

This makes the website easier to maintain.

---

# 🎨 51. Theme

Create:

```text
app_theme.dart
```

Use Material 3.

Example:

```dart
ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.poppinsTextTheme(),
)
```

The theme should define:

* Colors
* Typography
* Buttons
* Cards
* Input fields
* Navigation
* App bar
* Shapes

---

# 📐 52. Design System

Use consistent:

* Border radius
* Padding
* Margins
* Shadows
* Font sizes
* Button sizes
* Icon sizes

Suggested radius:

```text
Small cards: 12px
Large cards: 16–20px
Buttons: 10–14px
Images: 16–20px
```

Avoid random radius values throughout the application.

---

# 🧱 53. Constants

Create:

```text
app_constants.dart
```

Store:

```text
schoolName
phoneNumber
whatsappNumber
email
address
website
socialLinks
openingHours
```

Contact details should be editable from one central location.

---

# 🔐 54. Security

Never expose:

* API keys
* Private credentials
* Database passwords
* Secret tokens

Use environment/configuration mechanisms where necessary.

Forms should validate user input.

---

# 📊 55. Analytics

Prepare the website for analytics.

Important events:

```text
Page View
Phone Click
WhatsApp Click
Course View
Contact Form Submission
Get Directions Click
Book Driving Lessons Click
```

The primary success metric should be:

**Student inquiries and registrations.**

Not merely page views.

---

# 🔮 56. Future Backend

The first version can be a fast static website.

The architecture should allow future integration with:

* Firebase
* Supabase
* PostgreSQL
* REST APIs
* Admin dashboard
* Student management
* Online registration
* Booking
* Payments
* Course management
* Contact submissions

Do not introduce a backend unnecessarily in version one.

---

# 📅 57. Future Online Booking

The architecture should support future booking.

Possible flow:

```text
Choose Course
       ↓
Choose Date
       ↓
Choose Time
       ↓
Enter Details
       ↓
Confirm Booking
       ↓
Receive Confirmation
```

---

# 👨‍🎓 58. Future Student Registration

Future registration can include:

```text
Full Name
Phone Number
Email
Course
Preferred Schedule
Transmission
Message
```

This can eventually connect to an admin dashboard.

---

# 📱 59. PWA / Mobile Experience

Configure Flutter Web properly for mobile.

Include:

* Web manifest
* Favicon
* App icon
* Browser title
* Theme color
* Mobile viewport
* Loading experience

The website should feel like a polished mobile experience.

---

# 🌐 60. Browser Support

Test on:

* Google Chrome
* Microsoft Edge
* Mozilla Firefox
* Safari
* Android browsers
* iOS Safari

---

# 🚀 61. Production Build

Use:

```bash
flutter build web --release
```

Deployment output:

```text
build/web/
```

The hosting environment must support:

* HTTPS
* Custom domain
* SPA fallback
* Clean URLs

---

# 📦 62. Recommended Dependencies

Initial dependency direction:

```yaml
dependencies:
  flutter:
    sdk: flutter

  go_router: ^latest
  google_fonts: ^latest
  font_awesome_flutter: ^latest
  flutter_animate: ^latest
  url_launcher: ^latest
  url_strategy: ^latest
```

Use compatible stable versions when creating the project.

Do not use a package simply because it is popular.

---

# 🛠️ 63. Development Standards

The code should follow:

* Clean Dart
* Null safety
* Reusable widgets
* Separation of concerns
* Meaningful naming
* Small focused widgets
* Centralized theme
* Centralized constants
* Responsive layouts
* Minimal duplication
* Proper error handling

Avoid:

* Giant widgets
* Giant `main.dart`
* Hardcoded business information
* Hardcoded colors everywhere
* Duplicate components
* Unnecessary state management
* Unnecessary packages

---

# 🎯 64. Homepage Conversion Strategy

Every major section should eventually guide the visitor toward one of these actions:

```text
Book Driving Lessons
Call Us
WhatsApp Us
Contact Us
```

Example:

```text
Hero
   ↓
[ Book Driving Lessons ]

Courses
   ↓
[ Learn More ]

Why Choose Us
   ↓
[ Start Learning ]

Contact
   ↓
[ WhatsApp Us ] [ Call Us ]
```

---

# 🟧🔵⚪ 65. Overall Visual Direction

The final website must strongly reflect the Mulongo Driving School colors.

### Primary visual relationship:

```text
ORANGE
Energy • Action • Brand
        ↓
BLUE
Trust • Professionalism • Safety
        ↓
WHITE
Clean • Modern • Spacious
        ↓
RED
Attention • Small Accent
```

Orange should be the most recognizable brand color.

Blue should provide professionalism.

White should provide clean space.

Red should only provide occasional emphasis.

---

# 🎨 66. Example Visual Style

A typical section should feel like:

```text
┌───────────────────────────────────────────────┐
│                                               │
│        BLUE / DARK BLUE HEADING               │
│        ───────────── ORANGE ACCENT            │
│                                               │
│        Clean dark text explaining             │
│        the service or feature.                │
│                                               │
│        ┌─────────────────────────┐            │
│        │   ORANGE CTA BUTTON     │            │
│        └─────────────────────────┘            │
│                                               │
└───────────────────────────────────────────────┘
```

The website should use white space generously.

---

# 🚘 67. Final Homepage Structure

The complete homepage should be:

```text
┌─────────────────────────────────────┐
│ NAVIGATION                          │
├─────────────────────────────────────┤
│ HERO                                │
│                                     │
│ Learn to Drive with Confidence      │
│                                     │
│ [BOOK] [CALL]                       │
├─────────────────────────────────────┤
│ TRUST INDICATORS                    │
├─────────────────────────────────────┤
│ ABOUT                               │
├─────────────────────────────────────┤
│ COURSES                             │
├─────────────────────────────────────┤
│ WHY CHOOSE US                       │
├─────────────────────────────────────┤
│ TRAINING PROCESS                    │
├─────────────────────────────────────┤
│ TRAINING VEHICLES                   │
├─────────────────────────────────────┤
│ INSTRUCTORS                         │
├─────────────────────────────────────┤
│ TESTIMONIALS                        │
├─────────────────────────────────────┤
│ GALLERY                             │
├─────────────────────────────────────┤
│ FAQ                                 │
├─────────────────────────────────────┤
│ CONTACT / MAP                       │
├─────────────────────────────────────┤
│ FINAL CTA                           │
├─────────────────────────────────────┤
│ FOOTER                              │
└─────────────────────────────────────┘
```

---

# 🧪 68. Testing Checklist

Before launch:

* [ ] Test homepage
* [ ] Test all routes
* [ ] Test mobile navigation
* [ ] Test tablet layout
* [ ] Test desktop layout
* [ ] Test large screens
* [ ] Test phone links
* [ ] Test WhatsApp
* [ ] Test email
* [ ] Test Google Maps
* [ ] Test contact form
* [ ] Test buttons
* [ ] Test external links
* [ ] Test gallery
* [ ] Test FAQ
* [ ] Test 404 page
* [ ] Test browser refresh on inner pages
* [ ] Test clean URLs
* [ ] Optimize images
* [ ] Test loading speed
* [ ] Test accessibility
* [ ] Test SEO metadata
* [ ] Test production build

---

# 🚀 69. Launch Checklist

Before going live:

* [ ] Add official Mulongo Driving School logo
* [ ] Add real school photographs
* [ ] Add real vehicle photographs
* [ ] Add real instructor information
* [ ] Add official phone number
* [ ] Add official WhatsApp number
* [ ] Add official email
* [ ] Add official physical location
* [ ] Add actual opening hours
* [ ] Add official social media
* [ ] Add Google Maps location
* [ ] Verify courses
* [ ] Verify course prices
* [ ] Verify training duration
* [ ] Verify all business information
* [ ] Configure SEO
* [ ] Configure favicon
* [ ] Configure page titles
* [ ] Configure metadata
* [ ] Connect domain
* [ ] Enable HTTPS
* [ ] Test production deployment
* [ ] Submit to Google Search Console

---

# 🏁 70. Final Product Vision

The final Mulongo Driving School website should feel like a **premium, modern Ugandan driving school brand**.

A visitor should understand within a few seconds:

### WHO ARE YOU?

**Mulongo Driving School**

### WHAT DO YOU DO?

**Professional driving training in Uganda.**

### WHY SHOULD THEY CHOOSE YOU?

**Professional instruction, practical training, safety and confidence.**

### WHAT SHOULD THEY DO NEXT?

**Book driving lessons, call or WhatsApp.**

The website should be:

**Professional.**

**Modern.**

**Fast.**

**Responsive.**

**Beautiful.**

**Trustworthy.**

**SEO-friendly.**

**Conversion-focused.**

**Mobile-first.**

**Easy to maintain.**

---

# 🏆 71. Brand Tagline

Primary recommended tagline:

## **Learn to Drive. Drive with Confidence.**

Alternative taglines:

**Your Journey to Confident Driving Starts Here.**

**Professional Training. Confident Drivers. Safer Roads.**

The final tagline should be selected according to Mulongo Driving School's final branding.

---

# ✅ 72. Final Development Instruction

Build the website as a **real production-quality business website**, not as a simple demonstration.

The design must prioritize:

1. **Mulongo Driving School branding**
2. **Orange as the dominant color**
3. **Blue as the professional secondary color**
4. **White as the clean primary background**
5. **Red only as a subtle accent**
6. **High-quality imagery**
7. **Strong typography**
8. **Responsive design**
9. **Smooth but subtle animations**
10. **Clear calls to action**
11. **Phone and WhatsApp conversion**
12. **Local SEO for Uganda**
13. **Fast performance**
14. **Clean Flutter architecture**
15. **Reusable components**
16. **Clean URLs using `url_strategy`**
17. **Routing using `go_router`**
18. **Typography using `google_fonts`**
19. **Icons using `font_awesome_flutter`**
20. **Animations using `flutter_animate`**
21. **External links using `url_launcher`**

The final website should look like a website that a professional driving school would confidently use as its official online presence.

**Do not use generic template aesthetics.**

**Do not invent business information.**

**Use placeholders where actual Mulongo Driving School information has not yet been provided.**

**Keep the design consistent, premium, modern and strongly branded around orange, blue and white.**

# 🚗 Mulongo Driving School

## Learn to Drive. Drive with Confidence. 🇺🇬
