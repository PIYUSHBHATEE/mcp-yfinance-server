from source.yf_server import mcp


# This defines the ASGI app expected by uvicorn
app = mcp.streamable_http_app()  


# If also running standalone via python main.py
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
