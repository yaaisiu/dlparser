### MCP (Model Context Protocol)

This project uses the Model Context Protocol for GitHub integration, allowing AI models to access repository context.

## Setup and Installation

### Prerequisites
- Node.js and npm (which includes npx)
- A GitHub Personal Access Token with appropriate permissions

### Installation Options

#### Option 1: JavaScript Implementation (Recommended)
We're currently using the JavaScript implementation of the MCP server:

1. **Set up environment variables**:
   - Create a `.env` file in the project root (this file is gitignored)
   - Add your GitHub token to the file:
     ```
     # GitHub Personal Access Token
     GITHUB_PERSONAL_ACCESS_TOKEN=your_token_here
     ```

2. **Run the server**:
   - Use the provided script:
     ```bash
     chmod +x start_mcp.sh  # Make the script executable (first time only)
     ./start_mcp.sh         # Run the server
     ```
   - The server will run on port 3000 by default

#### Option 2: Python Implementation (Alternative)
An alternative Python implementation is also available:

```bash
pip install mcp-server-git
python -m mcp_server_git
```

## Security Notes

- Never commit your `.env` file to version control
- Regularly rotate your GitHub Personal Access Token
- The token is stored in the `.env` file which is listed in `.gitignore`

## Troubleshooting

If you encounter issues:
1. Ensure your GitHub token has the necessary permissions
2. Check that the `.env` file exists and contains the token
3. Verify that Node.js and npm are properly installed

## Additional Resources

- [MCP GitHub Repository](https://github.com/microsoft/modelcontextprotocol)
- [MCP Documentation](https://github.com/microsoft/modelcontextprotocol/blob/main/docs/README.md)