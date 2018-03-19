
FROM swift:4.0

WORKDIR /app

COPY Package.swift ./
RUN swift package fetch

COPY Sources ./Sources
RUN swift build
CMD ./.build/debug/swift-server