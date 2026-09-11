import subprocess
import sys

try:
    import webview
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip", "install", "pywebview"])
    import webview
if __name__ == '__main__':
    webview.create_window(
        'WMP Battery Radio',
        'radio.html',
        width=260,
        height=300,
        resizable=False,
        min_size=(260, 300),
        frameless=True,
        easy_drag=True,
        background_color='#0b0b12',
        on_top=True
    )
    webview.start()