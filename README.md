# OpenWebUI Add-on for Home Assistant

A Home Assistant add-on to run [OpenWebUI](https://openwebui.com/) with parameterized configuration, allowing you to serve tools like [Llama](https://www.llama.com/) without hardcoding any values.

## Features

- **Parameterization:** Easily configure tool URLs and custom arguments via the add-on options.
- **Ingress Support:** Integrates directly into Home Assistant’s sidebar with its own Web UI button.
- **Flexible Base Image:** Customize the base image with build arguments.

## Installation

### Adding the Repository

1. In Home Assistant, navigate to **Supervisor > Add-on Store**.
2. Click the three-dot menu (⋮) in the upper-right corner and select **Repositories**.
3. Add the following repository URL:  
   `https://github.com/cutik/addon-openwebui`  
   *(Replace with your repository URL.)*

### Installing the Add-on

After adding the repository, locate **OpenWebUI Add-on** in the add-on store and click **Install**.

Alternatively, click the button below to open the repository page and follow the installation instructions:

[![Install OpenWebUI Add-on](https://img.shields.io/badge/Install%20OpenWebUI-blue)](https://github.com/cutik/addon-openwebui)

## Configuration

Once installed, configure the add-on by going to the **Configuration** tab. The main options include:

- **LLAMA_URL:** The URL for the tool you wish to serve (e.g., `https://www.llama.com`).
- **CUSTOM_ARGS:** Any additional arguments you want to pass to OpenWebUI.

These parameters are automatically set as environment variables in the container.

## Usage

1. **Start the Add-on:**  
   Launch the add-on from the Supervisor panel.

2. **Access the Web UI:**  
   Click the **OpenWebUI** button in the Home Assistant sidebar. This will open the add-on’s interface through Home Assistant's Ingress.

## Troubleshooting

- Ensure that the `LLAMA_URL` is set correctly in the add-on configuration.
- Check the Home Assistant logs for any error messages if the add-on fails to start.
- Verify that your Home Assistant version supports Ingress for custom add-ons.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- [Home Assistant](https://www.home-assistant.io/)
- [OpenWebUI](https://openwebui.com/)
- [Llama](https://www.llama.com/)
