cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.450"
  sha256 arm:   "831c1b46f82ab0572a2ddc201ba4ffbc6b20ecbb6c29bbfd00200f5dfd448fd2",
         intel: "b9c004b9d65bee9987f2dbbd3186ab6e395d4f7b9e11335b19327e50dd2cb797"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
