package com.platform.weixinUtils.message.req;


import com.platform.weixinUtils.message.common.BaseMessage;

/**
 *  语音的消息实体类
 */
public class VoiceMessage extends BaseMessage {
    private Voice voice;

    public Voice getVoice() {
        return voice;
    }

    public void setVoice(Voice voice) {
        this.voice = voice;
    }
}
