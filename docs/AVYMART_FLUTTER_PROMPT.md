# AvyMart Flutter Multi-Platform App - Comprehensive AI Development Prompt

## Project Overview
Create **AvyMart**, a revolutionary billion-user scalable, multi-platform e-commerce and service booking ecosystem with a unique **UID/QR Code-based customer exclusivity system**. The platform serves diverse industries (Automotive, Medical, Restaurant, Fashion, etc.) through a unified technology platform with **"Connected Innovation, Growing Together"** as the core vision.[1]

Build this as a production-ready Flutter application supporting Android, iOS, Web, Windows, macOS, and Linux, demonstrating modern Flutter best practices, clean architecture, and enterprise-grade code quality.[1]

## Core Unique Features

### Revolutionary UID/QR Code System
- Unique customer-seller exclusive relationship model preventing marketplace competition[1]
- Each seller/service provider generates unique UID codes for customer acquisition[1]
- Customers registered with a seller's UID see ONLY that seller's catalog and services[1]
- QR code scanning for easy customer onboarding and access verification[1]
- UID analytics dashboard for tracking customer acquisition and retention[1]

### Chat-Based Commerce Interface
- **Primary interaction model**: Conversational commerce through intuitive chat interface[1]
- Seamless ordering, payments, and service booking within chat conversations[1]
- Persistent chat history with complete order and communication records[1]
- Real-time engagement with live messaging and instant order status updates[1]
- 10 distinct vendor themes randomly assigned for unique experiences[1]
- Deep customization: accent colors, chat backgrounds, comprehensive UI personalization[1]

### Family Collaboration System
- Parent-child account relationships with approval workflows[1]
- Shared family shopping cart with parent approval for purchases[1]
- Family spending analytics and budget management[1]
- Multi-generational shopping experiences[1]

## Technical Requirements

### Architecture
- Use **Clean Architecture** with clear separation of concerns[1]
- Implement **Feature-First** folder structure for billion-user scalability[1]
- Follow **SOLID principles** throughout the codebase[1]
- Use **Repository Pattern** for data access with multi-tenant data isolation[1]
- Implement proper **Dependency Injection**[1]
- **Microservices architecture** foundation with API Gateway[1]

### State Management
- Use **Riverpod 2.x** for state management[1]
- Implement proper state providers for each feature
- Use AsyncValue for handling loading/error states
- Real-time state updates for chat, appointments, and UID validation
- Avoid setState() for complex state logic

### Performance Requirements (Critical)
- **Web**: 2s page load, 2.5s LCP, 90+ Lighthouse score[1]
- **Mobile**: 1s app launch, 300ms screen transitions[1]
- **API**: <100ms response time (95th percentile), 100K RPS capacity[1]
- **Database**: <50ms query time, support 10M concurrent users[1]
- **UID System**: <50ms UID verification and customer routing[1]
- **Global CDN**: <50ms latency worldwide[1]

## Project Structure

```
avymart/
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   │   ├── app_colors.dart
│   │   │   ├── app_strings.dart
│   │   │   ├── api_endpoints.dart
│   │   │   ├── app_routes.dart
│   │   │   └── uid_constants.dart              # UID system constants
│   │   ├── themes/
│   │   │   ├── app_theme.dart
│   │   │   ├── light_theme.dart
│   │   │   ├── dark_theme.dart
│   │   │   └── vendor_themes.dart               # 10 vendor-specific themes
│   │   ├── utils/
│   │   │   ├── validators.dart
│   │   │   ├── formatters.dart
│   │   │   ├── extensions.dart
│   │   │   ├── uid_generator.dart               # UID code generation
│   │   │   └── qr_code_helper.dart              # QR scanning utilities
│   │   ├── errors/
│   │   │   ├── exceptions.dart
│   │   │   ├── failures.dart
│   │   │   └── uid_exceptions.dart              # UID-specific errors
│   │   └── widgets/
│   │       ├── custom_button.dart
│   │       ├── custom_text_field.dart
│   │       ├── loading_indicator.dart
│   │       ├── error_widget.dart
│   │       ├── qr_scanner_widget.dart           # QR code scanner
│   │       └── uid_badge.dart                   # UID status indicator
│   │
│   ├── features/
│   │   ├── authentication/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── user_model.dart
│   │   │   │   │   └── uid_registration_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── auth_remote_datasource.dart
│   │   │   │   │   ├── auth_local_datasource.dart
│   │   │   │   │   └── uid_datasource.dart      # UID verification
│   │   │   │   └── repositories/
│   │   │   │       └── auth_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── user.dart
│   │   │   │   │   └── uid_relationship.dart    # Customer-seller relationship
│   │   │   │   ├── repositories/
│   │   │   │   │   └── auth_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── login_user.dart
│   │   │   │       ├── register_user.dart
│   │   │   │       ├── register_with_uid.dart   # UID-based registration
│   │   │   │       ├── scan_qr_code.dart        # QR code authentication
│   │   │   │       └── logout_user.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── auth_provider.dart
│   │   │       │   └── uid_provider.dart        # UID state management
│   │   │       ├── screens/
│   │   │       │   ├── login_screen.dart
│   │   │       │   ├── register_screen.dart
│   │   │       │   ├── uid_registration_screen.dart  # UID-specific onboarding
│   │   │       │   └── qr_scan_screen.dart      # QR code scanning
│   │   │       └── widgets/
│   │   │           ├── login_form.dart
│   │   │           ├── social_login_buttons.dart
│   │   │           └── uid_input_widget.dart
│   │   │
│   │   ├── uid_management/                      # UID System Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── uid_code_model.dart
│   │   │   │   │   ├── uid_analytics_model.dart
│   │   │   │   │   └── customer_relationship_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── uid_remote_datasource.dart
│   │   │   │   │   └── uid_local_datasource.dart
│   │   │   │   └── repositories/
│   │   │   │       └── uid_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── uid_code.dart
│   │   │   │   │   ├── uid_analytics.dart
│   │   │   │   │   └── customer_relationship.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── uid_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── generate_uid_code.dart
│   │   │   │       ├── validate_uid_code.dart
│   │   │   │       ├── get_uid_analytics.dart
│   │   │   │       ├── distribute_uid_code.dart
│   │   │   │       └── track_uid_usage.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── uid_management_provider.dart
│   │   │       │   └── uid_analytics_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── uid_dashboard_screen.dart
│   │   │       │   ├── uid_generator_screen.dart
│   │   │       │   ├── uid_analytics_screen.dart
│   │   │       │   └── customer_relationships_screen.dart
│   │   │       └── widgets/
│   │   │           ├── uid_card.dart
│   │   │           ├── qr_code_display.dart
│   │   │           └── analytics_chart.dart
│   │   │
│   │   ├── chat_commerce/                       # Chat-Based Commerce Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── chat_message_model.dart
│   │   │   │   │   ├── chat_thread_model.dart
│   │   │   │   │   └── chat_order_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── chat_remote_datasource.dart
│   │   │   │   │   ├── chat_local_datasource.dart
│   │   │   │   │   └── websocket_datasource.dart  # Real-time chat
│   │   │   │   └── repositories/
│   │   │   │       └── chat_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── chat_message.dart
│   │   │   │   │   ├── chat_thread.dart
│   │   │   │   │   └── chat_order.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── chat_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── send_message.dart
│   │   │   │       ├── receive_message.dart
│   │   │   │       ├── create_order_from_chat.dart
│   │   │   │       ├── get_chat_history.dart
│   │   │   │       └── update_order_status.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── chat_provider.dart
│   │   │       │   └── websocket_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── chat_list_screen.dart
│   │   │       │   ├── chat_detail_screen.dart
│   │   │       │   └── chat_order_screen.dart
│   │   │       └── widgets/
│   │   │           ├── chat_bubble.dart
│   │   │           ├── chat_input.dart
│   │   │           ├── order_in_chat_widget.dart
│   │   │           └── vendor_theme_widget.dart
│   │   │
│   │   ├── products/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── product_model.dart
│   │   │   │   │   ├── industry_product_model.dart  # Industry-specific
│   │   │   │   │   └── uid_product_model.dart       # UID-filtered products
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── products_remote_datasource.dart
│   │   │   │   │   └── uid_product_datasource.dart  # UID-based filtering
│   │   │   │   └── repositories/
│   │   │   │       └── products_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── product.dart
│   │   │   │   │   └── industry_product.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── products_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── get_products_by_uid.dart     # UID-specific products
│   │   │   │       ├── get_product_details.dart
│   │   │   │       ├── search_products.dart
│   │   │   │       └── filter_by_industry.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── products_provider.dart
│   │   │       │   └── uid_products_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── products_list_screen.dart
│   │   │       │   ├── product_details_screen.dart
│   │   │       │   └── uid_catalog_screen.dart     # UID-exclusive catalog
│   │   │       └── widgets/
│   │   │           ├── product_card.dart
│   │   │           ├── industry_filter.dart
│   │   │           └── uid_product_badge.dart
│   │   │
│   │   ├── cart/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── cart_item_model.dart
│   │   │   │   │   └── family_cart_model.dart      # Family collaboration
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── cart_local_datasource.dart
│   │   │   │   │   └── family_cart_datasource.dart
│   │   │   │   └── repositories/
│   │   │   │       └── cart_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── cart_item.dart
│   │   │   │   │   └── family_cart.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── cart_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── add_to_cart.dart
│   │   │   │       ├── remove_from_cart.dart
│   │   │   │       ├── update_cart_quantity.dart
│   │   │   │       ├── get_family_cart.dart        # Family cart access
│   │   │   │       └── request_parent_approval.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── cart_provider.dart
│   │   │       │   └── family_cart_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── cart_screen.dart
│   │   │       │   └── family_cart_screen.dart
│   │   │       └── widgets/
│   │   │           ├── cart_item_widget.dart
│   │   │           ├── family_approval_widget.dart
│   │   │           └── cart_summary.dart
│   │   │
│   │   ├── service_booking/                     # Service Appointment System
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── service_provider_model.dart
│   │   │   │   │   ├── appointment_model.dart
│   │   │   │   │   ├── time_slot_model.dart
│   │   │   │   │   └── service_category_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   ├── service_remote_datasource.dart
│   │   │   │   │   └── appointment_datasource.dart
│   │   │   │   └── repositories/
│   │   │   │       └── service_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── service_provider.dart
│   │   │   │   │   ├── appointment.dart
│   │   │   │   │   └── service_category.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── service_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── get_service_providers_by_uid.dart
│   │   │   │       ├── book_appointment.dart
│   │   │   │       ├── get_available_slots.dart
│   │   │   │       ├── cancel_appointment.dart
│   │   │   │       └── reschedule_appointment.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── service_provider.dart
│   │   │       │   └── appointment_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── service_providers_screen.dart
│   │   │       │   ├── provider_details_screen.dart
│   │   │       │   ├── appointment_booking_screen.dart
│   │   │   │       ├── my_appointments_screen.dart
│   │   │       │   └── appointment_calendar_screen.dart
│   │   │       └── widgets/
│   │   │           ├── provider_card.dart
│   │   │           ├── time_slot_picker.dart
│   │   │           ├── appointment_card.dart
│   │   │           └── service_category_filter.dart
│   │   │
│   │   ├── family/                              # Family Collaboration Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── family_account_model.dart
│   │   │   │   │   ├── parent_child_model.dart
│   │   │   │   │   └── family_permission_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   └── family_remote_datasource.dart
│   │   │   │   └── repositories/
│   │   │   │       └── family_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── family_account.dart
│   │   │   │   │   └── family_permission.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── family_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── create_child_account.dart
│   │   │   │       ├── approve_purchase.dart
│   │   │   │       ├── set_spending_limit.dart
│   │   │   │       └── view_family_activity.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   └── family_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── family_dashboard_screen.dart
│   │   │       │   ├── child_accounts_screen.dart
│   │   │       │   └── approval_requests_screen.dart
│   │   │       └── widgets/
│   │   │           ├── child_account_card.dart
│   │   │           └── approval_request_widget.dart
│   │   │
│   │   ├── industry_modules/                    # Industry-Specific Modules
│   │   │   ├── automotive/
│   │   │   │   ├── data/
│   │   │   │   │   └── models/
│   │   │   │   │       ├── vehicle_model.dart
│   │   │   │   │       ├── auto_part_model.dart
│   │   │   │   │       └── warranty_model.dart
│   │   │   │   ├── domain/
│   │   │   │   │   └── usecases/
│   │   │   │   │       ├── vin_lookup.dart
│   │   │   │   │       └── check_part_compatibility.dart
│   │   │   │   └── presentation/
│   │   │   │       └── screens/
│   │   │   │           ├── vehicle_parts_screen.dart
│   │   │   │           └── service_garage_screen.dart
│   │   │   │
│   │   │   ├── medical/
│   │   │   │   ├── data/
│   │   │   │   │   └── models/
│   │   │   │   │       ├── prescription_model.dart
│   │   │   │   │       └── medical_record_model.dart
│   │   │   │   ├── domain/
│   │   │   │   │   └── usecases/
│   │   │   │   │       ├── verify_prescription.dart
│   │   │   │   │       └── check_hipaa_compliance.dart
│   │   │   │   └── presentation/
│   │   │   │       └── screens/
│   │   │   │           ├── pharmacy_screen.dart
│   │   │   │           └── clinic_appointment_screen.dart
│   │   │   │
│   │   │   └── restaurant/
│   │   │       ├── data/
│   │   │       │   └── models/
│   │   │       │       ├── menu_item_model.dart
│   │   │       │       └── reservation_model.dart
│   │   │       ├── domain/
│   │   │       │   └── usecases/
│   │   │       │       ├── place_order.dart
│   │   │       │       └── reserve_table.dart
│   │   │       └── presentation/
│   │   │           └── screens/
│   │   │               ├── restaurant_menu_screen.dart
│   │   │               └── table_booking_screen.dart
│   │   │
│   │   ├── admin/                               # Multi-Tenant Admin System
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── admin_user_model.dart
│   │   │   │   │   └── platform_settings_model.dart
│   │   │   │   ├── datasources/
│   │   │   │   │   └── admin_remote_datasource.dart
│   │   │   │   └── repositories/
│   │   │   │       └── admin_repository_impl.dart
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   └── admin_user.dart
│   │   │   │   ├── repositories/
│   │   │   │   │   └── admin_repository.dart
│   │   │   │   └── usecases/
│   │   │   │       ├── manage_users.dart
│   │   │   │       ├── configure_industry_modules.dart
│   │   │   │       └── view_platform_analytics.dart
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   └── admin_provider.dart
│   │   │       ├── screens/
│   │   │       │   ├── super_admin_dashboard.dart
│   │   │       │   ├── industry_admin_dashboard.dart
│   │   │       │   ├── regional_admin_dashboard.dart
│   │   │       │   └── platform_settings_screen.dart
│   │   │       └── widgets/
│   │   │           └── admin_analytics_widget.dart
│   │   │
│   │   └── profile/
│   │       ├── data/
│   │       │   ├── models/
│   │       │   │   └── profile_model.dart
│   │       │   ├── datasources/
│   │       │   │   └── profile_remote_datasource.dart
│   │       │   └── repositories/
│   │       │       └── profile_repository_impl.dart
│   │       ├── domain/
│   │       │   ├── entities/
│   │       │   │   └── profile.dart
│   │       │   ├── repositories/
│   │       │   │   └── profile_repository.dart
│   │       │   └── usecases/
│   │       │       ├── get_profile.dart
│   │       │       └── update_profile.dart
│   │       └── presentation/
│   │           ├── providers/
│   │           │   └── profile_provider.dart
│   │           ├── screens/
│   │           │   ├── profile_screen.dart
│   │           │   └── edit_profile_screen.dart
│   │           └── widgets/
│   │               ├── profile_header.dart
│   │               └── profile_menu_item.dart
│   │
│   ├── shared/
│   │   ├── models/
│   │   │   ├── api_response.dart
│   │   │   └── multi_tenant_context.dart         # Tenant isolation
│   │   ├── services/
│   │   │   ├── api_service.dart
│   │   │   ├── storage_service.dart
│   │   │   ├── navigation_service.dart
│   │   │   ├── websocket_service.dart            # Real-time communication
│   │   │   ├── uid_service.dart                  # UID verification service
│   │   │   ├── qr_code_service.dart              # QR code generation/scanning
│   │   │   └── analytics_service.dart            # Tracking and analytics
│   │   └── providers/
│   │       ├── theme_provider.dart
│   │       └── tenant_provider.dart              # Multi-tenant state
│   │
│   └── main.dart
│
├── test/
│   ├── core/
│   ├── features/
│   │   ├── authentication/
│   │   ├── uid_management/
│   │   ├── chat_commerce/
│   │   ├── products/
│   │   ├── cart/
│   │   ├── service_booking/
│   │   ├── family/
│   │   ├── industry_modules/
│   │   ├── admin/
│   │   └── profile/
│   └── shared/
│
├── integration_test/
│   ├── uid_flow_test.dart
│   ├── chat_commerce_test.dart
│   ├── service_booking_test.dart
│   └── family_collaboration_test.dart
│
├── assets/
│   ├── images/
│   │   ├── logo.png
│   │   ├── placeholder.png
│   │   └── vendor_themes/                        # 10 vendor theme assets
│   ├── icons/
│   │   └── industry_icons/                       # Industry-specific icons
│   └── fonts/
│
├── pubspec.yaml
├── analysis_options.yaml
├── .gitignore
└── README.md
```

## Dependencies (pubspec.yaml)

Include these packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # State Management
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.5
  
  # Navigation
  go_router: ^14.2.7
  
  # HTTP & API
  dio: ^5.7.0
  retrofit: ^4.4.1
  pretty_dio_logger: ^1.4.0
  
  # WebSockets for Real-time Chat
  web_socket_channel: ^3.0.1
  socket_io_client: ^2.0.3+1
  
  # Local Storage
  shared_preferences: ^2.3.2
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  
  # QR Code Generation & Scanning
  qr_flutter: ^4.1.0
  mobile_scanner: ^5.2.3              # For QR scanning
  qr_code_scanner: ^1.0.1
  
  # JSON Serialization
  json_annotation: ^4.9.0
  freezed_annotation: ^2.4.4
  
  # UI & Theming
  flutter_svg: ^2.0.10+1
  cached_network_image: ^3.4.1
  shimmer: ^3.0.0
  flutter_chat_ui: ^1.6.15            # Chat interface components
  
  # Utilities
  intl: ^0.19.0
  equatable: ^2.0.5
  dartz: ^0.10.1
  uuid: ^4.5.1                        # UID generation
  
  # Analytics & Monitoring
  firebase_analytics: ^11.3.3
  sentry_flutter: ^8.9.0
  
  # Permissions
  permission_handler: ^11.3.1
  
  # Location Services (for service providers)
  geolocator: ^13.0.1
  google_maps_flutter: ^2.9.0
  
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  
  # Code Generation
  build_runner: ^2.4.13
  riverpod_generator: ^2.4.3
  json_serializable: ^6.8.0
  freezed: ^2.5.7
  retrofit_generator: ^9.1.2
  hive_generator: ^2.0.1
  
  # Testing
  mockito: ^5.4.4
  mocktail: ^1.0.4
  integration_test:
    sdk: flutter
```

## Feature Requirements

### 1. Authentication with UID/QR Integration
- **Email/Phone Registration**: Standard authentication with JWT and OAuth 2.0[1]
- **UID-Based Registration**: Customer registers using seller's unique UID code[1]
- **QR Code Scanning**: Scan seller's QR code to instantly register and access their store[1]
- **Social Login**: Google, Facebook, Apple authentication[1]
- **Multi-Factor Authentication**: Enhanced security for sensitive accounts[1]
- **Token Management**: Secure token storage with refresh mechanism[1]
- **Role-Based Access**: Super Admin, Industry Admin, Regional Admin, Merchant, Customer roles[1]

### 2. UID Management System (Core Feature)
- **UID Code Generation**: Unique code generation for sellers/service providers[1]
- **QR Code Display**: Generate QR codes for easy customer onboarding[1]
- **UID Analytics Dashboard**: Track customer acquisition, retention, conversion rates[1]
- **Customer-Seller Relationships**: Manage exclusive customer connections[1]
- **UID Distribution Tools**: Email, SMS, print materials for code distribution[1]
- **Fraud Detection**: Security measures to prevent UID manipulation[1]
- **Performance Tracking**: <50ms UID verification and routing[1]

### 3. Chat-Based Commerce Interface (Primary Interaction)
- **Conversational UI**: Chat-first interface for all customer-vendor interactions[1]
- **Real-time Messaging**: WebSocket-powered instant messaging[1]
- **In-Chat Ordering**: Seamless product browsing and ordering within chat[1]
- **Order Status Updates**: Live order tracking in conversation thread[1]
- **Persistent Chat History**: Complete conversation and order history[1]
- **Vendor Theming**: 10 distinct themes randomly assigned to vendors[1]
- **Deep Customization**: Accent colors, backgrounds, UI personalization[1]
- **Media Sharing**: Images, videos, documents within chat[1]

### 4. Products Feature with UID Filtering
- **UID-Exclusive Catalog**: Customers see only their registered seller's products[1]
- **Industry-Specific Attributes**: Automotive VIN, medical prescriptions, etc.[1]
- **Product Search & Filtering**: Advanced search with industry-specific filters[1]
- **Multi-Variant Support**: Unlimited product configurations[1]
- **Bulk Management**: CSV import/export for large catalogs[1]
- **Digital Asset Management**: Images, videos, 3D models[1]
- **Real-time Inventory**: Live stock updates[1]

### 5. Shopping Cart with Family Collaboration
- **Family Shared Cart**: Multiple family members add items to shared cart[1]
- **Parent Approval Workflow**: Children request approval for purchases[1]
- **Cart Persistence**: Save cart across sessions and devices[1]
- **Multi-Seller Cart**: Support items from multiple sellers (if applicable)[1]
- **Real-time Updates**: Live cart synchronization across family accounts[1]
- **Spending Limits**: Parent-set budget controls for children[1]

### 6. Service Booking System
- **Service Provider Profiles**: Doctors, mechanics, stylists, home services[1]
- **UID-Based Access**: Customers access only registered service providers[1]
- **Appointment Scheduling**: Calendar integration with time slot management[1]
- **Multi-Staff Management**: Support multiple service staff per provider[1]
- **Automated Reminders**: Email, SMS, push notifications[1]
- **Rescheduling & Cancellations**: Flexible appointment management[1]
- **Service Categories**: Healthcare, automotive, beauty, home services, professional[1]
- **Ratings & Reviews**: Service provider feedback system[1]

### 7. Family Collaboration System
- **Parent-Child Accounts**: Hierarchical account relationships[1]
- **Approval Workflows**: Parent approval for purchases and bookings[1]
- **Family Dashboard**: Unified view of all family activities[1]
- **Spending Analytics**: Household budget tracking[1]
- **Permission Management**: Granular control over child account capabilities[1]

### 8. Industry-Specific Modules

#### Automotive Module
- **VIN Lookup**: Vehicle identification and part compatibility[1]
- **Part Fitment Guides**: Technical specifications[1]
- **Warranty Tracking**: Claims and coverage management[1]
- **Service Scheduling**: Auto repair appointments[1]

#### Medical Module
- **Prescription Management**: Digital prescription handling[1]
- **HIPAA Compliance**: Secure medical data storage[1]
- **Doctor Verification**: Credential checking[1]
- **Pharmacy Integration**: Medication ordering[1]

#### Restaurant Module
- **Digital Menus**: UID-based menu access[1]
- **Advance Ordering**: Pre-order for pickup[1]
- **POS Integration**: Real-time inventory sync[1]
- **Table Reservations**: Booking system[1]

### 9. Multi-Tenant Admin System
- **Super Admin Dashboard**: Platform-wide management[1]
- **Industry Admin Tools**: Vertical-specific configuration[1]
- **Regional Admin Controls**: Geographic area management[1]
- **Merchant Tools**: Seller dashboard and analytics[1]
- **UID Management**: Code generation and analytics[1]
- **Platform Monitoring**: Real-time performance tracking[1]

### 10. Profile & Settings
- **User Profile Management**: Personal information, preferences[1]
- **Order History**: Past purchases and service bookings[1]
- **Family Management**: Add/remove family members[1]
- **UID Relationships**: View registered sellers/providers[1]
- **Theme Settings**: Light/dark mode toggle[1]
- **Language Selection**: Multi-language support[1]

## UI/UX Requirements

### Design System
- **Material 3 Design**: Latest Material Design guidelines[1]
- **Dual Themes**: Light and dark mode support[1]
- **Vendor Themes**: 10 distinct themes for vendor differentiation[1]
- **8px Grid System**: Consistent spacing throughout[1]
- **Custom Color Schemes**: Industry and vendor-specific palettes[1]
- **Accessibility**: WCAG 2.1 AA compliance[1]

### Responsive Design
- **Mobile-First**: Optimized for phones with <1s app launch[1]
- **Tablet Support**: Optimized layouts for tablets[1]
- **Desktop**: Multi-column layouts for large screens[1]
- **Web Responsive**: Max-width constraints with responsive breakpoints[1]

### Navigation
- **Bottom Navigation**: Mobile (Chat, Catalog, Cart, Services, Profile)[1]
- **Side Drawer**: Desktop/tablet navigation[1]
- **Deep Linking**: URL-based navigation with UID context[1]
- **Go Router**: Type-safe navigation with UID parameter passing[1]
- **Chat-First**: Primary entry point through chat interface[1]

### Performance UI Standards
- **Skeleton Loaders**: Shimmer effects during data loading[1]
- **Optimistic UI Updates**: Instant feedback before server confirmation[1]
- **Lazy Loading**: Progressive image and data loading[1]
- **Smooth Animations**: 60fps transitions (<300ms)[1]

## Code Quality Standards

### Best Practices
1. **Use const constructors** wherever possible for performance
2. **Extract widgets** - Keep widgets small and focused (<300 lines)
3. **Use ListView.builder** for dynamic lists
4. **Implement proper error handling** with try-catch and custom exceptions
5. **Use freezed** for immutable data classes
6. **Add comprehensive comments** for complex UID and chat logic
7. **Follow Effective Dart** naming conventions
8. **Use extensions** for reusable functionality
9. **Implement dependency injection** with Riverpod
10. **Write meaningful commit messages** with conventional commits format

### Performance Optimization (Critical for Billion-User Scale)
- **Minimize widget rebuilds** using const, keys, and selective providers[1]
- **Use cached_network_image** for all network images[1]
- **Implement pagination** for all lists (max 50 items per page)[1]
- **Database query optimization** (<50ms query time)[1]
- **UID caching** for instant routing (<50ms verification)[1]
- **WebSocket connection pooling** for chat scalability[1]
- **Profile with Flutter DevTools** regularly[1]

### Testing Requirements (80% Coverage Minimum)
- **Unit Tests**: All use cases, repositories, UID logic[1]
- **Widget Tests**: All screens and complex widgets[1]
- **Integration Tests**: Critical flows (UID registration, chat ordering, service booking)[1]
- **Performance Tests**: Load testing for billion-user scalability[1]

## API Integration

### Core API Endpoints

#### Authentication & UID APIs
- `POST /api/v1/auth/register` - User registration
- `POST /api/v1/auth/register-with-uid` - UID-based customer registration[1]
- `POST /api/v1/auth/login` - User login
- `POST /api/v1/auth/scan-qr` - QR code authentication[1]
- `POST /api/v1/uid/generate` - Generate unique UID code[1]
- `GET /api/v1/uid/{code}/validate` - Validate UID code[1]
- `GET /api/v1/uid/{code}/analytics` - UID performance analytics[1]

#### Chat Commerce APIs
- `WS /api/v1/chat/connect` - WebSocket connection for real-time chat[1]
- `POST /api/v1/chat/send` - Send chat message
- `GET /api/v1/chat/history/{threadId}` - Get chat history[1]
- `POST /api/v1/chat/order` - Create order from chat[1]
- `GET /api/v1/chat/threads` - Get all chat threads

#### Product APIs with UID Filtering
- `GET /api/v1/products?uid={code}` - Get products by UID[1]
- `GET /api/v1/products/{id}` - Get product details
- `GET /api/v1/products/search?uid={code}&q={query}` - UID-filtered search[1]

#### Service Booking APIs
- `GET /api/v1/services?uid={code}` - Get service providers by UID[1]
- `GET /api/v1/services/{id}/slots` - Get available time slots[1]
- `POST /api/v1/appointments/book` - Book appointment[1]
- `PUT /api/v1/appointments/{id}/reschedule` - Reschedule appointment[1]

#### Family Collaboration APIs
- `POST /api/v1/family/create-child` - Create child account[1]
- `GET /api/v1/family/cart` - Get shared family cart[1]
- `POST /api/v1/family/approval-request` - Request parent approval[1]
- `PUT /api/v1/family/approve/{requestId}` - Approve/reject purchase[1]

#### Admin APIs
- `GET /api/v1/admin/analytics` - Platform analytics[1]
- `POST /api/v1/admin/industry/configure` - Configure industry modules[1]
- `GET /api/v1/admin/uid/usage` - UID system usage statistics[1]

### Error Handling
- Network errors (no connection)
- Server errors (500+)
- Client errors (400+)
- UID validation errors (invalid/expired codes)[1]
- WebSocket connection failures[1]
- Timeout errors (enforced <100ms API response)[1]
- Parsing errors
- Multi-tenant isolation errors[1]
- Custom business logic errors

### API Performance Requirements
- **Response Time**: <100ms for 95th percentile[1]
- **Throughput**: 100K requests per second[1]
- **UID Verification**: <50ms[1]
- **WebSocket Latency**: <100ms message delivery[1]

## Platform-Specific Features

### Mobile (Android/iOS)
- **QR Code Scanner**: Camera access for scanning UID codes[1]
- **Push Notifications**: Real-time chat and appointment reminders[1]
- **Bottom Navigation**: Optimized for one-handed use[1]
- **Native Splash Screen**: <1s app launch[1]
- **Biometric Authentication**: Fingerprint/Face ID[1]
- **Offline Mode**: Basic functionality without internet[1]

### Web
- **Responsive Layout**: Max-width 1440px[1]
- **QR Code Display**: Generate QR for seller distribution[1]
- **Hover Effects**: Interactive UI elements[1]
- **SEO Optimization**: Meta tags for search engines[1]
- **Browser Support**: Chrome, Firefox, Safari, Edge[1]
- **PWA Support**: Progressive web app capabilities[1]

### Desktop (Windows/macOS/Linux)
- **Side Navigation**: Persistent sidebar[1]
- **Keyboard Shortcuts**: Power user features[1]
- **Multi-Window Support**: Separate chat and catalog windows[1]
- **System Tray Integration**: Background notifications[1]
- **Context Menus**: Right-click functionality[1]

## Security & Compliance

### Security Requirements
- **End-to-End Encryption**: AES-256 for data at rest, TLS 1.3 in transit[1]
- **UID Security**: Prevent fraud and manipulation[1]
- **Multi-Factor Authentication**: For sensitive accounts[1]
- **Secure Token Storage**: Platform-specific secure storage[1]
- **Input Validation**: Sanitize all user inputs[1]
- **HTTPS Only**: No plain HTTP connections[1]

### Compliance
- **GDPR**: EU data protection compliance[1]
- **CCPA**: California consumer privacy[1]
- **HIPAA**: Medical data compliance[1]
- **PCI DSS**: Payment card industry standards[1]
- **Audit Trails**: Comprehensive logging for forensics[1]

## Additional Requirements

### Internationalization
- **Multi-Language**: English, Spanish, French, Hindi, Mandarin[1]
- **RTL Support**: Arabic, Hebrew layouts[1]
- **Localized Formats**: Date, time, currency, numbers[1]
- **Timezone Management**: Automatic timezone detection[1]

### Analytics & Monitoring
- **Firebase Analytics**: User behavior tracking[1]
- **Sentry**: Error monitoring and crash reporting[1]
- **UID Analytics**: Customer acquisition and retention metrics[1]
- **Performance Monitoring**: API latency, app performance[1]
- **Custom Events**: Track chat orders, service bookings, UID scans[1]

### Accessibility
- **Screen Reader Support**: Semantic labels for all elements[1]
- **High Contrast**: Support for visually impaired users[1]
- **Keyboard Navigation**: Full keyboard accessibility[1]
- **Touch Targets**: Minimum 44x44 pixels[1]
- **Font Scaling**: Support system font size settings[1]

## Scalability Requirements (Billion-User Architecture)

### Infrastructure
- **Microservices**: Loosely coupled services[1]
- **Load Balancing**: Distribute traffic across servers[1]
- **Database Sharding**: Horizontal scaling for 10M+ concurrent users[1]
- **Redis Caching**: <50ms query performance[1]
- **CDN Integration**: <50ms global latency[1]
- **Multi-Region Deployment**: Geographic distribution[1]

### Data Management
- **Multi-Tenant Isolation**: Secure data separation[1]
- **UID Indexing**: Fast UID lookup and routing[1]
- **Chat Message Storage**: Efficient storage for billions of messages[1]
- **Media Storage**: CDN-backed asset delivery[1]

## Deliverables

1. **Complete Flutter Project**: All files, folders, and configurations
2. **README.md**: Comprehensive setup instructions, UID system explanation
3. **API Documentation**: All endpoints with UID context
4. **.gitignore**: Properly configured for Flutter
5. **analysis_options.yaml**: Strict linting rules
6. **Unit Tests**: 80%+ coverage for UID, chat, and core features
7. **Integration Tests**: Critical user flows
8. **Mock Data**: Sample UID codes, chat conversations, service providers
9. **UID Documentation**: Detailed explanation of exclusivity system
10. **Deployment Guide**: Multi-platform build instructions

## Implementation Notes

### Priority Order
1. **Phase 1 - Foundation (Critical)**:
   - Authentication with UID registration
   - UID management system (generation, validation, analytics)
   - Basic product catalog with UID filtering
   - User profile management

2. **Phase 2 - Core Features**:
   - Chat-based commerce interface with WebSockets
   - Shopping cart with family collaboration
   - Service booking system
   - QR code scanning and generation

3. **Phase 3 - Advanced Features**:
   - Industry-specific modules (Automotive, Medical, Restaurant)
   - Multi-tenant admin system
   - Advanced analytics and reporting
   - Multi-language support

### Critical Implementation Details
- **UID System**: Implement UID routing at the API gateway level for <50ms verification[1]
- **WebSocket Architecture**: Use connection pooling and horizontal scaling for chat[1]
- **Multi-Tenancy**: Implement tenant context in every API call[1]
- **Family Accounts**: Use hierarchical data structures for parent-child relationships[1]
- **Performance**: Profile regularly with Flutter DevTools to maintain performance targets[1]

### Code Standards
- Generate all files with proper imports
- Use meaningful variable and function names (e.g., `uidCode`, `customerSellerRelationship`)
- Follow Flutter/Dart style guide strictly
- Add TODO comments for future enhancements
- Include proper error handling everywhere
- Make code production-ready for billion-user scale
- Ensure comprehensive documentation
- Follow the exact folder structure specified above

## Success Criteria

### Technical Success Metrics
- API response time <100ms (95th percentile)[1]
- UID verification <50ms[1]
- App launch <1s on mobile[1]
- Page load <2s on web[1]
- Support 10M concurrent users[1]
- 99.99% uptime[1]
- 80%+ test coverage[1]

### Business Success Metrics
- 85%+ customer retention through UID system[1]
- Seamless chat-based ordering experience[1]
- Multi-industry support (5+ verticals)[1]
- Family collaboration adoption >60%[1]
- Service booking conversion rate >40%[1]

***

## Final Instructions to AI Coding Assistant

**Please implement the complete AvyMart Flutter application following all specifications above, with special emphasis on:**

1. **UID/QR Code Exclusivity System**: This is the revolutionary core feature that differentiates AvyMart. Implement comprehensive UID generation, validation, analytics, and customer-seller relationship management.[1]

2. **Chat-Based Commerce**: The primary user interaction is through chat. Build a robust, real-time chat system with in-chat ordering, vendor theming, and persistent history.[1]

3. **Family Collaboration**: Implement parent-child accounts with approval workflows, shared carts, and spending controls.[1]

4. **Service Booking Integration**: Seamless appointment scheduling for multiple industries with UID-based provider access.[1]

5. **Billion-User Scalability**: Architect for massive scale with proper caching, database sharding, CDN integration, and performance optimization.[1]

6. **Multi-Industry Support**: Build flexible, modular architecture supporting Automotive, Medical, Restaurant, and other verticals with industry-specific features.[1]

7. **Production-Ready Code**: This is not a demo—generate enterprise-grade code with proper error handling, security, testing, and documentation for a platform targeting 1 billion users.[1]

Generate complete, working code for all features with clean architecture, proper state management, comprehensive error handling, and full UID system integration. Follow the exact folder structure and implement all critical features for Phase 1 with extensibility for Phases 2 and 3.[1]
