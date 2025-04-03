# Run me after cloning the project

read -p "Enter project name: " title
sed -i -e "s|{{title}}|$title|g" README.md
read -p "Enter a project description: " desc
sed -i -e "s|{{desc}}|$desc|g" README.md
read -p "Enter new modules name (starts with 'github.com/'): " modname


sed -i -e "s|github.com/milesflo/go-cli-chassis|$modname|g" go.mod

binaryname=${modname##*/}

sed -i -e "s|go-cli-chassis|$binaryname|g" .gitignore

# # Oh, I'm die. Thank you forever.
rm bootstrap.sh

git add .

echo "Committing changes..."

git commit -m "Project $title initialized from template"
