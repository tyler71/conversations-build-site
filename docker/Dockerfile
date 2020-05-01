FROM thyrlian/android-sdk:latest

COPY ./entrypoint.sh /entrypoint.sh
ADD https://cdn.xyzz.work/assets/conversations/libwebrtc-m81.aar /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["master"]
