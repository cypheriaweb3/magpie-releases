cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.233"
  sha256 arm:   "39e853caa04835e8e2016fd26d96c688e2885131c6a296cd85f8a9a74c695b1c",
         intel: "f73f904da8e60315371a3e9ff7eae68651a92d13b633989915880f0411733695"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
