cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.188"
  sha256 arm:   "ad5c2344e5c91ccacf392cb7aa516069c3b88694f77be6eebd0f98865ef5396f",
         intel: "6258dffe1d75c2622fa82d6d4a58ba11529e58db86c814a6bd29b38b4205edd4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
