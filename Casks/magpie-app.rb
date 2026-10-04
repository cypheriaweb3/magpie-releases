cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.808"
  sha256 arm:   "86d025f7182c52834a45fe05a76e1798792f6d8d8d46207cfb3e29e0979b1055",
         intel: "5321a5488f99e6e7c2f4f96e312e240dfd3afc743daa943deaca15082e532e5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
