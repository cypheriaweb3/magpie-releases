cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.689"
  sha256 arm:   "f3b594f80b5a32d3e5c60cae6fa7ea38c5d214f720926c191e048f74e4af043f",
         intel: "bd8c10e1435b88309bb5cd742ab344862687c5b57bfa3392dde0a4ca3766add7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
