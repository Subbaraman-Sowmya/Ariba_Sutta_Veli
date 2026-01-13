#!/bin/bash
# --- THE MASTER SUTTA VELI SCRIPT ---
# 1. Setup Identity | 2. Secure Environment | 3. Push to Sivapuram

echo "Starting the Final Handshake..."

# 1. SETUP IDENTITY (The 'Anu')
# We create a new key and add it to the SSH agent
ssh-keygen -t ed25519 -C "subex2010@gmail.com" -f ~/.ssh/id_ariba -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ariba

echo "----------------------------------------------------"
echo "COPY THIS KEY AND ADD TO GITHUB SETTINGS NOW:"
cat ~/.ssh/id_ariba.pub
echo "----------------------------------------------------"
read -p "Once added to GitHub, press [Enter] to continue the Push..."

# 2. SECURE THE AREA (The 'Washerman')
# We ensure private files are NEVER tracked
git init
echo ".ssh/" > .gitignore
echo "id_ariba*" >> .gitignore
echo "*.key" >> .gitignore
git branch -M main

# 3. GATHER THE LOGIC (The 'Porul')
git add .
git commit -m "Integration: Data Cleansing logic secured and validated"

# 4. THE HANDSHAKE (The 'Sivapuram')
# Replace with your actual repository name
git remote add origin git@github.com:Subbaraman-Sowmya/Ariba_Sutta_Veli.git

# The final 'No-Hands' Push
git push -u origin main

echo "Sakka Podu! Your code has reached the Cloud."
