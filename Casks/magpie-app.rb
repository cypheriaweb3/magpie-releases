cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.695"
  sha256 arm:   "eae5bd789993ff23e3b0cda2dbf120fd1bfa0fa00956731a279af9597a8dedb6",
         intel: "f0653db70651a1a53d0b02815774ac5f8446dcdb37f1b1ae19177b0afdeb42ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
