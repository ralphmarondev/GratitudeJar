import requests
import json

API_KEY = "AIzaSyAcCoNgI16lU_by56qbRKLoIhI-DVYkn44"

url = f"https://identitytoolkit.googleapis.com/v1/accounts:signUp?key={API_KEY}"

payload = {
    "email": "ralphmaron@cute.com",
    "password": "#supercute123",
    "returnSecureToken": True
}

response = requests.post(url, json=payload)

if response.status_code == 200:
    data = response.json()
    print("✅ User created successfully!")
    print("User ID:", data["localId"])
    print("Email:", data["email"])
else:
    print("❌ Error:", response.json())