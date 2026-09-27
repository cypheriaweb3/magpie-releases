cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.204"
  sha256 arm:   "cdac40ecfc5af697980f674f15bafadb164ad1df25441162fbcf01c8dcb11229",
         intel: "12faf5b7ebc5c8feb55f11122d627f17d9ed766e8167873ab63beb45d8b6c986"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
