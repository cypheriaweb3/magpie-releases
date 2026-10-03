cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.756"
  sha256 arm:   "47da40d16c25c92ad76e2f3c85ff0040ada62fdec662daa64143e063b09062c9",
         intel: "28034c3b62a00aec36d79cdff103be8e04b8b1495428a010bd40f242130b80e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
