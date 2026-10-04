cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.821"
  sha256 arm:   "037fc986c7c559190eae7844b6d844ad57487bbe289feec9d5f72dd7e9293ffa",
         intel: "4eff196768d7f9a54b9aa9b491b49de51efb5f6fde23fd92df6bd93f56ae62b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
