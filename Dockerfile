FROM swift:5.9.2-jammy

WORKDIR /src

ADD Package.swift Package.swift
ADD Sources Sources
ADD Tests Tests

RUN swift test
