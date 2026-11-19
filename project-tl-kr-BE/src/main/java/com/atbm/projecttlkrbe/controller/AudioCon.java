package com.atbm.projecttlkrbe.controller;

import com.atbm.projecttlkrbe.service.AudioSer;
import com.atbm.projecttlkrbe.service.GttsSer;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/api/audio")
@CrossOrigin(origins = "${app.frontend.url}")
@RequiredArgsConstructor
public class AudioCon {
    private final AudioSer ser;
    private final GttsSer gttsSer;

    @PostMapping("/check")
    public ResponseEntity<String> checkPronunciation(
            @RequestParam("audio") MultipartFile audio,
            @RequestParam(value = "kind", required = false) String kind,
            @RequestParam(value = "expected", required = false) String expected
    ) throws IOException {
        return ser.checkPronunciation(audio, kind, expected);
    }

    @GetMapping("/speak")
    public ResponseEntity<byte[]> speed(@RequestParam String text) {
        if (text == null || text.trim().isEmpty()) return ResponseEntity.badRequest().build();
        byte[] audio = gttsSer.synthesizeKoreanSpeech(text);
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_TYPE, "audio/mpeg")
                .header(HttpHeaders.CACHE_CONTROL, "public, max-age=86400")
                .body(audio);
    }
}