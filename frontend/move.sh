if [ -d ../backend/public/css ];then
    rm -r ../backend/public/css
fi

if [ -d ../backend/public/js ];then
    rm -r ../backend/public/js
fi

mv -f dist/* ../backend/public
mv ../backend/public/index.html ../backend/resources/views/index.html
rm -rf dist
