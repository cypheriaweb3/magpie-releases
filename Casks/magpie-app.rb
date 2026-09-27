cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.207"
  sha256 arm:   "533a88326e835d5e05c97a3aff068ec7f8988e77e10e65a8db4fc9daff0f5ec2",
         intel: "d3944a1aea9f527a81ebed658b611ed5a3e733fbd1115333673ae72d1a03cd27"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
