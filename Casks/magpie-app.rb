cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.618"
  sha256 arm:   "757d6d7907477762695d18e48dfcfd809f9d542834d34efc834e8421eaaf5483",
         intel: "c4091dc58890d96635bb5b9019cace3c600f12fd4b01b6c09276e50d4c922790"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
