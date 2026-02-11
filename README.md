# SuperShop - Professional E-Commerce Application

**SuperShop** is a robust, production-grade Flutter e-commerce application designed with scalability, performance, and user experience in mind. It features a complete shopping experience from browsing products to checkout, backed by a modern tech stack and a rigorous design system.

## Key Features

*   **Authentication & Personalization**
    *   Secure Login & Signup via Email/Password and Google Sign-In.
    *   Onboarding screens to guide new users.
    *   User Profile management and personalization settings.
*   **Dynamic Product Catalog**
    *   **Home Screen:** Featured carousels, popular categories, and product highlights.
    *   **Store:** Browsing by categories and brands with tabbed views.
    *   **Product Details:** Comprehensive product views with ratings, reviews, and variations.
    *   **Wishlist:** Save products for later.
*   **Cart & Checkout**
    *   Full-featured cart management.
    *   Integrated checkout process.
*   **Design & UX**
    *   **Adaptive Theming:** Seamless Light and Dark mode support throughout the entire app.
    *   **Custom Design System:** Built on top of a rigorously defined set of custom widgets, colors, and typography.
    *   **Responsive:** optimized for various screen sizes.

### Design System
SuperShop utilizes a formally established design system located in `lib/utils/`.
*   **Theming:** Centralized theme configuration in `BAppTheme` with granular control over component styles (AppBar, Text, Buttons, etc.) for both Light and Dark modes.
*   **Constants:** Strict usage of named constants for Colors (`BColors`), Sizes (`BSizes`), and Text (`BTexts`) to ensure consistency.
*   **Custom Widgets:** A library of highly reusable, custom-built widgets (Headers, Product Cards, Grid Layouts) located in `common/widgets/`.

## Tech Stack

*   **Framework:** [Flutter](https://flutter.dev/)
*   **Language:** [Dart](https://dart.dev/)
*   **State Management:** [GetX](https://pub.dev/packages/get) (for State, Dependency Injection, and Routing)
*   **Backend:** [Firebase](https://firebase.google.com/)
    *   Authentication
    *   Cloud Firestore
    *   Firebase Storage
*   **Architecture:** MVVM (Model-View-ViewModel) pattern via GetX Controllers.
