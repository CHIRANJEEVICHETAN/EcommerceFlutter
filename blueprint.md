# AvyMart Blueprint

## Overview

This document outlines the architecture and features of AvyMart, a Flutter-based mobile application for online shopping. The application will provide users with a seamless and intuitive shopping experience, from browsing products to placing orders.

## Style and Design

AvyMart will adhere to Material Design 3 principles to ensure a modern, visually appealing, and user-friendly interface. The application will be responsive and adapt to various screen sizes, providing a consistent experience on both mobile and web platforms.

### Color Palette

- **Primary Color:** `#6200EE` (Deep Purple)
- **Secondary Color:** `#03DAC6` (Teal)
- **Background Color:** `#FFFFFF` (White)
- **Surface Color:** `#F5F5F5` (Light Grey)
- **Text Color:** `#000000` (Black)

### Typography

- **Font Family:** Roboto
- **Headings:** Oswald (bold)
- **Body Text:** Open Sans

## Features

### Authentication

- **Email and Password Authentication:** Users can sign up and sign in using their email and password.
- **Phone Number Authentication:** Users can sign up and sign in using their phone number, with OTP verification.

### Product Browsing

- **Product Catalog:** A comprehensive catalog of products, organized by categories.
- **Product Search:** A search bar to quickly find products.
- **Product Details:** A detailed view of each product, including images, description, price, and reviews.

### Shopping Cart

- **Add to Cart:** Users can add products to their shopping cart.
- **View Cart:** Users can view the contents of their shopping cart.
- **Update Cart:** Users can update the quantity of products in their cart.
- **Remove from Cart:** Users can remove products from their cart.

### Checkout

- **Shipping Information:** Users can enter their shipping address.
- **Payment Options:** Users can choose from various payment options, including credit/debit card, net banking, and cash on delivery.
- **Order Summary:** A summary of the order before placing it.

### Order History

- **View Orders:** Users can view their past orders.
- **Order Details:** A detailed view of each order, including the products ordered, shipping address, and payment method.

## Current Task: Implement Phone Number Authentication

- **Modify `auth_service.dart`:** Remove Google Sign-In and add phone number authentication logic.
- **Create `validators.dart`:** Add validation for Indian phone numbers and email addresses.
