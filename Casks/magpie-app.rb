cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.274"
  sha256 arm:   "0bfdf29b4ce63383d7e670e2ad87582b9ad63a7994a9fe9d0454ef1189154f2e",
         intel: "cacf7224dbb1fd9a09f9fb07b6bce59d30d34669dc8bcfacf88f446178652d4a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
