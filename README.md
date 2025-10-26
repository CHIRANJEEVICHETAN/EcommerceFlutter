# AvyMart - Online Marketplace

AvyMart is a feature-rich online marketplace built with Flutter and Firebase. It provides a platform for sellers to list their products and for customers to browse and purchase them.

## Features

### Customer Features

*   **Product Catalog:** Browse a wide range of products from various sellers.
*   **Product Details:** View detailed information about each product, including price, description, and images.
*   **Shopping Cart:** Add products to a shopping cart for later purchase.
*   **User Authentication:** Securely sign in and sign up using phone number authentication.

### Seller Features

*   _(Coming Soon)_ Add and manage products.
*   _(Coming Soon)_ Track orders and manage inventory.

### Admin Features

*   _(Coming Soon)_ Manage users and roles.
*   _(Coming Soon)_ Oversee all products and orders.

## Tech Stack

*   **Frontend:** Flutter
*   **Backend:** Firebase (Authentication, Firestore, Storage)
*   **State Management:** Provider
*   **Routing:** Custom routing with `AppRouter`
*   **Dependency Injection:** `get_it`

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/avymart.git
    ```

2.  **Set up Firebase:**

    *   Create a new Firebase project.
    *   Add an Android and/or iOS app to your Firebase project.
    *   Download the `google-services.json` (for Android) and/or `GoogleService-Info.plist` (for iOS) and place them in the appropriate directories.
    *   Enable Phone Number authentication in the Firebase console.

3.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

4.  **Run the app:**

    ```bash
    flutter run
    ```
