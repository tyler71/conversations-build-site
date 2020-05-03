FROM thyrlian/android-sdk:4.0

COPY ./entrypoint.sh /entrypoint.sh
ADD https://cdn.xyzz.work/assets/conversations/libwebrtc-m81.aar /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["master"]
