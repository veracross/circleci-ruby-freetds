ARG freetds_version=1.00.110
ARG ruby_version=2.7

FROM veracross/freetds:${freetds_version} as freetds
FROM cimg/ruby:${ruby_version}-browsers

COPY --from=freetds /usr/local /usr/local
