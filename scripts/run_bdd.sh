#!/bin/bash
flutter drive --driver=test_driver/integration_test_driver.dart --target=integration_test/gherkin_suite_test.dart --dart-define=app_env="test"
