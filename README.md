# XCUITest on Firebase Test Lab Demo with GitHub Actions

This project demonstrates the integration of XCUITest for iOS real device testing on Firebase Test Lab, leveraging GitHub Actions for continuous integration and delivery (CI/CD). The goal is to showcase an automated testing workflow that triggers XCUITests on Firebase Test Lab's real devices directly from GitHub Actions whenever changes are pushed to the repository.

## Overview

The project includes:
- An example iOS app with a basic UI.
- XCUITest test cases for the app.
- A GitHub Actions workflow configuration that automates the process of building the app, preparing the test artifacts, and triggering tests on Firebase Test Lab.

## Getting Started

To get started with this project and run the tests on Firebase Test Lab via GitHub Actions, follow these steps:

1. **Fork or clone this repository** to your GitHub account.
2. **Set up Firebase Test Lab**: Ensure you have a Firebase project set up and have enabled Firebase Test Lab. You will need to configure your GitHub repository with secrets for authentication.
3. **Configure GitHub Secrets**: Go to your repository's Settings > Secrets and add the following secrets:
   - `FIREBASE_TOKEN`: Your Firebase CI token, obtainable via `firebase login:ci`.
   - Any other necessary secrets for your testing environment or Firebase project.
4. **Push changes to trigger the workflow**: Any push to the repository will trigger the GitHub Actions workflow defined in `.github/workflows/main.yml`, which builds the app, prepares test artifacts, and runs the tests on Firebase Test Lab.

## Workflow Details

The `.github/workflows/main.yml` file contains the configuration for the GitHub Actions workflow. It's set up to perform the following steps:

1. Checkout the repository.
2. Set up the desired Xcode version.
3. Build the iOS app and test targets.
4. Zip the test artifacts.
5. Upload the test artifacts to Firebase Test Lab and trigger the tests.
6. Report the test results.

## Contributing

Contributions to improve the example app or the testing workflow are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## License

This project is open source and available under the [MIT License](LICENSE).
