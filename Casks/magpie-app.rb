cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.234"
  sha256 arm:   "69fb614b44173b68d0feb11db4c08acde6bbc7b10cd59fe5edc5919c7a63d72f",
         intel: "ba3dbe85e4260490056ff3c4f637b5c9b56c2a83a7c49f4a5eedaf56bd5a391d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
