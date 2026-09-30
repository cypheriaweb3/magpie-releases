cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.438"
  sha256 arm:   "beed17d2d2192751e453077ed439b4d9d751cc0857cf5d55e41cec965f60f78d",
         intel: "2825a4ee4552464fbedf8bb2ac34695c479b0fbb9d16579449b865cd608c0d0a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
