cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.387"
  sha256 arm:   "d1116b32a24112c20467b0af680c2764cccdea30893b063184ccc48fe3f7c5a0",
         intel: "1e7f92840457bd953930885550fa33f03eaefc7a82c4c5b1e8924067e67afaaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
