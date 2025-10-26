
# Project Blueprint

## Overview

This document outlines the style, design, and features of the Flutter application. It serves as a single source of truth for the project's current state and future development plans.

## Style and Design

The application will follow Material Design 3 principles to ensure a modern and intuitive user experience.

*   **Color Scheme:** A color scheme will be generated from a seed color to create a harmonious and accessible palette.
*   **Typography:** The `google_fonts` package will be used to provide a consistent and expressive set of text styles.
*   **Component Theming:** Individual Material components will be styled using theme properties to maintain a consistent look and feel.
*   **Layout:** The layout will be designed to be responsive and adapt to different screen sizes, ensuring a seamless experience on both mobile and web.

## Implemented Features

### Initial Setup

*   **Firebase Integration:** The application is integrated with Firebase for authentication and other backend services.
*   **Dependency Management:** All dependencies have been updated to their latest stable versions.
*   **Project Structure:** The project follows a feature-first structure to promote scalability and maintainability.

## Current Plan

### Add "Continue as Guest" Functionality

**Objective:** To allow users to access the application's home screen without needing to authenticate.

**Steps:**

1.  **Add a "Continue as Guest" button** to the login screen.
2.  **Implement navigation** from the login screen to the home screen when the guest button is pressed.
3.  **Ensure the home screen** is accessible and functional for guest users.
