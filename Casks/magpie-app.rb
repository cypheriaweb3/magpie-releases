cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.496"
  sha256 arm:   "099c7b5f73b757e4b3eae5450f359262d12208714dc5dc30f93707bedcec9b42",
         intel: "ec8018656d9ea2711332987e58ae6ab90479589fb779db44c96074911f11fa08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
