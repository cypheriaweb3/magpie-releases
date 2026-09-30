cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.502"
  sha256 arm:   "5db89896996a82e66d7297be9f4275e0577e5966a5d713fdb3b9e27e8e7e0a04",
         intel: "20bde2e4027d8a16413ff2893acdc52b9c2444de8a3662210cfcaf537a519302"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
