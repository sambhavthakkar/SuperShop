# SuperShop

A roughly typed readme for the SuperShop generic e-commerce app.

## What's in here?

### Tech Stack
- **Flutter**: The main framework.
- **Firebase**: Backend for everything (Auth, Database, Storage).
- **GetX**: State management and navigation. Fast and simple.

### Key Libraries
- `firebase_auth`, `cloud_firestore`: The usual firebase stuff.
- `google_sign_in`: For easy login.
- `cached_network_image`: So images don't reload every time.
- `carousel_slider_plus`: Formatting banners.
- `lottie`: Cool animations.
- `iconsax`: Nice icons.
- `readmore`: Expandable text.

### Folder Structure (Roughly)
- `lib/features/`: The meat of the app. Auth, Shop, etc. lives here.
- `lib/common/`: Reusable widgets like buttons and inputs.
- `lib/data/`: Data handling and repositories.
- `lib/utils/`: Helpers, constants, formatters.
- `lib/bindings/`: GetX dependency injection.
