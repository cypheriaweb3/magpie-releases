cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.677"
  sha256 arm:   "2d49e7bd9d823ad80413a92a2c6d9e4d88b432338fa172688c8ad781edfc78d6",
         intel: "e1fc5f15692978865e54abe379bf6d0631b8b11f5aff38d9ede1524a5db92c73"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
