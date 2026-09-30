cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.472"
  sha256 arm:   "c4acba698b73e630f05fc8f995c0ef0012c1b055bea97be4f26e9384f1488ce9",
         intel: "df2e0ef35fcb89bc6c607cc6634ce15d5db3c31268832ff6379e6c855b559c85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
