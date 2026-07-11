run() {
    dotnet run --project AppInsightsAutoInstrumentWeb.csproj
}

build() {
    dotnet build AppInsightsAutoInstrumentWeb.csproj
}

publish() {
    dotnet publish AppInsightsAutoInstrumentWeb.csproj -c Release -o ./publish
}

compress() {
    cd publish
    zip -r ../app.zip .
    cd ..
}