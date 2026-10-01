cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.581"
  sha256 arm:   "81099d9fc16bd0ea1c95e7364bf7ba544327e10afb3efbcfe17d15eb716008d8",
         intel: "972a7cbb570198f17385f72922227a437451bfc79e72dfc521741e4d11c0f053"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
